import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_connector.dart';
import 'package:flutter_persistent_socket/communication/socket_connector_stub.dart'
    if (dart.library.io) 'package:flutter_persistent_socket/communication/socket_connector_native.dart'
    if (dart.library.html) 'package:flutter_persistent_socket/communication/socket_connector_web.dart';
import 'package:gm5_utils/types/observable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as http;

class HttpSocketConnector with ChangeNotifier {
  static const int RECONNECT_INTERVAL_S = 8;

  static final Map<String, HttpSocketConnector> _instances = {};

  final String address;
  late Uri _addressUri;
  bool autoReconnect = true;

  WebSocketChannel? channel;

  // is connected
  Observable<bool> connected = Observable(false);

  Future get whenConnected async {
    if (connected.val!) {
      return;
    }
    await connected.changes.firstWhere((element) => element!);
  }

  late StreamController _dataStream;

  Stream get dataStream => _dataStream.stream;

  factory HttpSocketConnector(String address) {
    HttpSocketConnector connector = _instances.putIfAbsent(
        address, () => HttpSocketConnector._internal(address));
    return connector;
  }

  HttpSocketConnector._internal(this.address) {
    _addressUri = Uri.parse(address);
    _dataStream = StreamController.broadcast();
    connected.val = true;
  }

  Future sendMessage(String data) async {
    try {
      final response = await http.post(_addressUri, body: data);
      if (response.statusCode != 200) {
        connected.val = false;
        return;
      }
      final pendingMessages = json.decode(response.body)['messages'];
      for (final message in pendingMessages) {
        _onData(message);
      }

      connected.val = true;
    } catch (e) {
      connected.val = false;
    }
  }

  void _onData(event) {
    _dataStream.add(event);
  }

  void _onError(e) async {
    print('http request error $e ($address)');
    connected.val = false;
  }

  void close() {
    channel?.sink.close();
    _instances.remove(address);
  }
}
