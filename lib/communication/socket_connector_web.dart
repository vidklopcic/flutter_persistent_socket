import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:web_socket_channel/html.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Map<String, html.WebSocket> _sockets = {};

Future<WebSocketChannel> getWebSocketChannel(String address,
    {@required void Function(List<int>) onData,
    @required VoidCallback onDone,
    @required void Function(dynamic) onError}) async {
  HtmlWebSocketChannel channel;
  try {
    html.WebSocket ws = html.WebSocket(address);
    _sockets[address] = ws;
    channel = HtmlWebSocketChannel(ws);
    channel.stream.listen(onData, onDone: () async {
      _sockets[address]?.close();
      await Future.delayed(Duration(seconds: 2));
      onDone();
    });
  } catch (e) {
    _sockets[address]?.close();
    return null;
  }
  return channel;
}