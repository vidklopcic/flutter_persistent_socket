import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<WebSocketChannel> getWebSocketChannel(String address,
    {@required void Function(List<int>) onData,
    @required VoidCallback onDone,
    @required void Function(dynamic) onError}) async {
  throw UnimplementedError('unsupported');
}
