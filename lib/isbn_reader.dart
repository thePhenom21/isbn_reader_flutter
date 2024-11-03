library isbn_reader;

import 'dart:io';

import 'package:dio/dio.dart';

class ISBNReader {
  static Future<String> findISBNfromImage({required File path}) async {
    String filename = path.path.split('/').last;
    FormData formData = FormData.fromMap(
        {"file": await MultipartFile.fromFile(path.path, filename: filename)});
    return Dio()
        .post(endpoint,
            data: formData)
        .then((value) => value.data);
  }
}
