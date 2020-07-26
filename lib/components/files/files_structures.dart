import 'package:flutter_persistent_socket/communication/socket_structures.dart';

class SFile extends Structure {
  String localKey;
  String url;

  SFile({this.localKey, this.url});

  @override
  SFile fromObject(obj) {
    localKey = obj['local-key'];
    url = obj['url'];
    return this;
  }

  @override
  void toSerializable(obj) => {'local-key': localKey, 'url': url};
}
