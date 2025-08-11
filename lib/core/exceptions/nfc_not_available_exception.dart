class NfcNotAvailableException implements Exception {
  final String message;

  NfcNotAvailableException(this.message);

  @override
  String toString() => 'NfcNotAvailableException : $message';
}
