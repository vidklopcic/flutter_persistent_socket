import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:web_socket_channel/html.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Map<String, html.WebSocket> _sockets = {};

Future<WebSocketChannel?> getWebSocketChannel(String address,
    {required void Function(List<int>) onData,
    required VoidCallback onDone,
    required void Function(dynamic) onError}) async {
  HtmlWebSocketChannel channel;
  try {
    _sockets[address]?.close();
    html.WebSocket ws = html.WebSocket(address);
    _sockets[address] = ws;
    Future onOpenEvent = ws.onOpen.first;
    onOpenEvent = onOpenEvent.timeout(Duration(seconds: 5));
    await onOpenEvent;
    channel = HtmlWebSocketChannel(ws);
    channel.stream.listen((val) => onData(val), onDone: () async {
      _sockets[address]?.close();
      onDone();
    });
  } catch (e) {
    _sockets[address]?.close();
    Future.delayed(Duration(seconds: 1)).then((value) => onDone());
    return null;
  }
  return channel;
}
