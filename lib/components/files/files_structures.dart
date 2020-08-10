import 'dart:ui';

import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/communication/socket_structures.dart';
import 'package:flutter_persistent_socket/components/files/files_messages.dart';

class SFile extends Structure {
  String localKey;
  String url;
  String id;

  SFile({this.localKey, this.url});

  @override
  SFile fromObject(obj) {
    if (obj == null) return this;
    localKey = obj['local-key'];
    url = obj['url'];
    id = obj['id'];
    return this;
  }

  @override
  Map toSerializable() => {'local-key': localKey, 'url': url, 'id': id};

  bool get hasImage => localKey != null || url != null;

  void delete(SocketApi socketApi) {
    if (url != null && id != null)
      socketApi.sendMessage(TxDeleteFile(file: this));
    localKey = null;
    url = null;
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is SFile && other.hashCode == hashCode;
  }

  @override
  int get hashCode => hashValues(localKey, url);
}
