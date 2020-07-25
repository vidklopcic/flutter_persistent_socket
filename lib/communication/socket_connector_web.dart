import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:web_socket_channel/html.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<WebSocketChannel> getWebSocketChannel(String address,
    {@required void Function(List<int>) onData,
    @required VoidCallback onDone,
    @required void Function(dynamic) onError}) async {
  HtmlWebSocketChannel channel;
  try {
    html.WebSocket ws = html.WebSocket(address);
    ws.onError.listen(onError);
    channel = HtmlWebSocketChannel(ws);
    channel.stream.listen(onData, onDone: onDone);
  } catch (e) {
    return null;
  }
  return channel;
}
