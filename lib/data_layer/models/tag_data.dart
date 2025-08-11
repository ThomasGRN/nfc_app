import 'dart:convert';
import 'dart:typed_data';

class TagData {
  final int type;
  final int size;
  final int? mode;
  final Map<int, int> colors;
  final Map<int, int> composition;
  final bool animalMaterial;
  final bool durableLabel;

  TagData({
    required this.type,
    required this.size,
    this.mode,
    required this.colors,
    required this.composition,
    required this.animalMaterial,
    required this.durableLabel,
  });

  factory TagData.fromPayload(Uint8List payload) {
    final languageCodeLength = payload[0]; // UTF-8 text prefix
    final contentBytes = payload.sublist(1 + languageCodeLength);
    final jsonString = String.fromCharCodes(contentBytes);
    final json = jsonDecode(jsonString);

    return TagData(
      type: json['t'],
      size: json['s'],
      mode: json['md'],
      colors: _mapFromJson(json['c']),
      composition: _mapFromJson(json['m']),
      animalMaterial: json['a'],
      durableLabel: json['d'],
    );
  }

  static Map<int, int> _mapFromJson(Map<String, dynamic> input) {
    return input.map((key, value) => MapEntry(int.parse(key), value));
  }

  @override
  String toString() {
    return '''
TagData:
  - type: $type
  - size: $size
  - mode: $mode
  - colors: $colors
  - composition: $composition
  - animalMaterial: $animalMaterial
  - durableLabel: $durableLabel
''';
  }
}
