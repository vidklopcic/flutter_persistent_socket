///
//  Generated code. Do not modify.
//  source: sfiles.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const UploadStartSlot$json = const {
  '1': 'UploadStartSlot',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'localKey', '3': 2, '4': 1, '5': 9, '10': 'localKey'},
  ],
};

const UploadProgress$json = const {
  '1': 'UploadProgress',
  '2': const [
    const {'1': 'nBytes', '3': 1, '4': 1, '5': 3, '10': 'nBytes'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'localKey', '3': 3, '4': 1, '5': 9, '10': 'localKey'},
  ],
};

const UploadDone$json = const {
  '1': 'UploadDone',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'file', '3': 2, '4': 1, '5': 11, '6': '.sfiles.UploadedFile', '10': 'file'},
  ],
};

const UploadedFile$json = const {
  '1': 'UploadedFile',
  '2': const [
    const {'1': 'localKey', '3': 1, '4': 1, '5': 9, '10': 'localKey'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'id', '3': 3, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'mime', '3': 4, '4': 1, '5': 9, '10': 'mime'},
    const {'1': 'thumbUrl', '3': 5, '4': 1, '5': 9, '10': 'thumbUrl'},
    const {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
  ],
};

const UploadStart$json = const {
  '1': 'UploadStart',
  '2': const [
    const {'1': 'localKey', '3': 1, '4': 1, '5': 9, '10': 'localKey'},
    const {'1': 'extension', '3': 2, '4': 1, '5': 9, '10': 'extension'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'mime', '3': 4, '4': 1, '5': 9, '10': 'mime'},
  ],
};

const DeleteFile$json = const {
  '1': 'DeleteFile',
  '2': const [
    const {'1': 'file', '3': 1, '4': 1, '5': 11, '6': '.sfiles.UploadedFile', '10': 'file'},
  ],
};

const UploadEnd$json = const {
  '1': 'UploadEnd',
};

