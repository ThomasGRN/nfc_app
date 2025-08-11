import 'package:flutter/material.dart';
import 'package:nfc_app/data_layer/models/tag_data.dart';
import 'package:nfc_app/logic_layer/viewmodels/nfc_viewmodel.dart';
import 'package:nfc_app/ui_layer/widgets/standard_button.dart';

class ReadTagView extends StatefulWidget {
  const ReadTagView({super.key});

  @override
  State<ReadTagView> createState() => _ReadTagState();
}

class _ReadTagState extends State<ReadTagView> {
  final NfcViewmodel nfcViewmodel = NfcViewmodel();

  void _startScan() async {
    await nfcViewmodel.read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: StandardButton(text: 'Scan tag', onPressed: _startScan),
        ),
      ),
    );
  }
}
