import 'dart:typed_data';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:nfc_app/core/exceptions/nfc_not_available_exception.dart';
import 'package:nfc_app/core/exceptions/null_data_exception.dart';

class NfcService {
  Future<Uint8List> readRawPayload() async {
    final availability = await FlutterNfcKit.nfcAvailability;

    if (availability != NFCAvailability.available) {
      throw NfcNotAvailableException('Lecteur NFC non disponible');
    }

    final tag = await FlutterNfcKit.poll(timeout: Duration(seconds: 10));
    final records = await FlutterNfcKit.readNDEFRecords();

    if (records.isEmpty || records.first.payload == null) {
      throw NullDataException('Pas de données sur le tag');
    }

    return records.first.payload!;
  }
}
