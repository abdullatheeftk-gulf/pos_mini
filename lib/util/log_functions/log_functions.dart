void printError<T>(T text) {
  print('\x1B[31m$text\x1B[0m');
}

void printWarning<T>(T text) {
  print('\x1B[33m$text\x1B[0m');
}

void printDebug<T>(T text) {
  print('\x1B[34m$text\x1B[0m');
}