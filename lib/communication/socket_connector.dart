import 'dart:async';
import 'dart:io';
import 'package:gm5_utils/types/observable.dart';
import 'package:web_socket_channel/io.dart';

class SocketConnector {
  static const int RECONNECT_INTERVAL_S = 2;

  static final Map<String, SocketConnector> _instances = {};

  final String address;

  IOWebSocketChannel channel;

  // is connected
  Observable<bool> connected = Observable(false);

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

  Future<Null> _onError(obj) async {
    await Future.delayed(Duration(seconds: 2));
    _connect();
  }

  void _onDone() {
    _connect();
  }

  void _connect() {
    print('connecting to $address');
    connected.val = false;
    channel?.sink?.close();
    WebSocket.connect(address).then((ws) {
      ws.pingInterval = Duration(seconds: 1);
      channel = IOWebSocketChannel(ws);
      channel.stream.listen(_onData, onDone: _onDone);
      print('$address connected');
      connected.val = true;
    }).catchError(_onError);
  }
}
