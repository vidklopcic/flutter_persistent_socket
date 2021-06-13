import 'dart:io';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<WebSocketChannel?> getWebSocketChannel(String address,
    {required void Function(List<int>) onData,
    required VoidCallback onDone,
    required void Function(dynamic) onError}) async {
  IOWebSocketChannel channel;
  try {
    WebSocket ws = await WebSocket.connect(address);
    ws.pingInterval = Duration(seconds: 1);
    channel = IOWebSocketChannel(ws);
    channel.stream.listen((val) => onData(val), onDone: onDone);
  } catch (e) {
    onError(e);
    return null;
  }
  return channel;
}
