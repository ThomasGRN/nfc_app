import 'package:nfc_app/data_layer/models/tag_data.dart';
import 'package:nfc_app/data_layer/services/nfc_service.dart';

class NfcViewmodel {
  final NfcService _nfcService = NfcService();

  Future<void> read() async {
    try {
      final payload = await _nfcService.readRawPayload();
      final tagData = TagData.fromPayload(payload);

      print('\n\n\n\n++++++++++++++++++++++++++++++++++++++++++++++++++++++');
      print(tagData.toString());
      print('++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n\n\n');
    } catch (e) {
      print('Erreur de lecture NFC : $e');
      return null;
    }
  }
}
