class NfcException implements Exception {
  final String message;

  NfcException(this.message);

  @override
  String toString() => 'NFCException : $message';
}
