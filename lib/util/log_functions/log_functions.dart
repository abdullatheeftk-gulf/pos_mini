void printError(String text) {
  print('\x1B[31m$text\x1B[0m');
}

void printWarning(String text) {
  print('\x1B[33m$text\x1B[0m');
}

void printDebug(String text) {
  print('\x1B[34m$text\x1B[0m');
}