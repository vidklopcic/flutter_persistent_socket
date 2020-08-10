import 'dart:async';
import 'package:flutter_persistent_socket/communication/socket_connector_stub.dart'
    if (dart.library.io) 'package:flutter_persistent_socket/communication/socket_connector_native.dart'
    if (dart.library.html) 'package:flutter_persistent_socket/communication/socket_connector_web.dart';
import 'package:gm5_utils/types/observable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketConnector {
  static const int RECONNECT_INTERVAL_S = 2;

  static final Map<String, SocketConnector> _instances = {};

  final String address;

  WebSocketChannel channel;

  // is connected
  Observable<bool> connected = Observable(false);

  bool _closed = false;

  Future get whenConnected async {
    if (connected.val) {
      return;
    }
    await connected.changes.firstWhere((element) => element);
  }


  StreamController _dataStream;

  Stream get dataStream => _dataStream.stream;

  factory SocketConnector(String address) {
    return _instances.putIfAbsent(address, () => SocketConnector._internal(address));
  }

  SocketConnector._internal(this.address) {
    _dataStream = StreamController.broadcast();
    _connect();
  }

  void _onData(event) {
    _dataStream.add(event);
  }

  Future<Null> _onError(e) async {
    print('ws connect error $e ($address)');
    await Future.delayed(Duration(seconds: 2));
    _connect();
  }

  void _onDone() {
    print('ws done ($address)');
    _connect();
  }

  void _connect() async {
    if (_closed) return;
    print('connecting to $address');
    connected.val = false;
    channel?.sink?.close();
    channel = await getWebSocketChannel(address, onData: _onData, onDone: _onDone, onError: _onError);
    if (channel == null) return;
    connected.val = true;
    print('$address connected');
  }

  void close() {
    _closed = true;
    channel?.sink?.close();
  }
}
