import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:isbn_reader/isbn_reader.dart';

void main() {
  test('adds one to input values', () async {
    String isbn =
        await ISBNReader.findISBNfromImage(path: File("images/ISBN.jpg"));
    print(isbn);
  });
}
