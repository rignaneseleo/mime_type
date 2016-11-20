/*
  mime_type library test
 */

import '../lib/mime_type.dart';

List<String> fileList = [
  'Franklin D. Roosevelt.dart',
  'Harry S.Truman.html',
  'Dwight D. Eisenhower.c',
  'John F. Kennedy.css',
  'Lyndon B. Johnson.json',
  'Richard Nixon.mp3',
  'Gerald Ford.cpp',
  'Jimmy Carter.java',
  'Ronald Reagan.jar',
  'George H. W. Bush.doc',
  'Bill Clinton.odt',
  'George W. Bush.pdf',
  'Barack Obama.spreadsheets',
  'Donald Trump.txt',
  'no such extension.abcde',
  'no extension 1.',
  'no extension 2'
];

List<String> extensionList = [
  '123',
  'zmm',
  'abcde'
];

main() {
  for (String file in fileList) {
    print('mime type for "$file" is "${mime(file)}"');
  }
  for (String ext in extensionList) {
    print('mime type for extension "$ext" is "${mimeFromExtension(ext)}"');
  }
}

/*
mime type for "Franklin D. Roosevelt.dart" is "application/vnd.dart"
mime type for "Harry S.Truman.html" is "text/html"
mime type for "Dwight D. Eisenhower.c" is "text/x-c"
mime type for "John F. Kennedy.css" is "text/css"
mime type for "Lyndon B. Johnson.json" is "application/json"
mime type for "Richard Nixon.mp3" is "audio/mpeg"
mime type for "Gerald Ford.cpp" is "text/x-c"
mime type for "Jimmy Carter.java" is "text/x-java-source"
mime type for "Ronald Reagan.jar" is "application/java-archive"
mime type for "George H. W. Bush.doc" is "application/msword"
mime type for "Bill Clinton.odt" is "application/vnd.oasis.opendocument.text"
mime type for "George W. Bush.pdf" is "application/pdf"
mime type for "Barack Obama.spreadsheets" is "application/vnd.google-apps.spreadsheet"
mime type for "Donald Trump.txt" is "text/plain"
mime type for "no such extension.abcde" is "null"
mime type for "no extension 1." is "null"
mime type for "no extension 2" is "null"
mime type for extension "123" is "application/vnd.lotus-1-2-3"
mime type for extension "zmm" is "application/vnd.handheld-entertainment+xml"
mime type for extension "abcde" is "null"
 */
