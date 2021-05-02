import 'dart:async';
import 'dart:typed_data';
import 'package:cross_file/cross_file.dart' show XFile;
import 'package:moor/moor.dart';
import 'dart:html' as html;
import 'file_picker_types.dart';

Future<List<XFile>> pickXFile({FileType accept}) {
  html.InputElement uploadInput = html.FileUploadInputElement();
  uploadInput.multiple = true;
  switch (accept) {
    case FileType.image:
      uploadInput.accept = 'image/*';
      break;
  }
  uploadInput.click();

  Completer<List<XFile>> completer = Completer();
  uploadInput.onChange.listen((e) async {
    completer.complete(uploadInput.files.map((f) => XFileWeb(f)).toList());
  });
  return completer.future;
}

class XFileWeb extends XFile {
  final html.File htmlFile;

  XFileWeb(this.htmlFile)
      : super(
          html.Url.createObjectUrl(htmlFile),
          mimeType: htmlFile.type,
          name: htmlFile.name,
          length: htmlFile.size,
          lastModified: htmlFile.lastModifiedDate,
        );

  Stream<Uint8List> openRead([int start, int end]) async* {
    final chunkSize = (htmlFile.size / 10).clamp(1e5, 5e6);
    var fileReader = html.FileReader();
    Completer<Uint8List> completer = Completer();
    fileReader.onLoad.listen((event) {
      completer.complete(fileReader.result);
    });
    int i = start;
    for (; i < end.clamp(0, htmlFile.size); i += chunkSize) {
      completer = Completer();
      fileReader.readAsArrayBuffer(htmlFile.slice(i, (i + chunkSize).clamp(0, end)));
      yield await completer.future;
    }
  }
}
