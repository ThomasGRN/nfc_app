class NullDataException implements Exception {
  final String message;

  NullDataException(this.message);

  @override
  String toString() => 'NullDataException : $message';
}
