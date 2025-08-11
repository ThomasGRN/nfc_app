import 'package:flutter/material.dart';
import 'package:nfc_app/core/constants/colors.dart';
import 'ui_layer/theme/main_theme.dart';
import 'ui_layer/views/read_tag_view.dart';

void main() {
  runApp(const NfcApp());
}

class NfcApp extends StatelessWidget {
  const NfcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: mainTheme,
      themeMode: ThemeMode.dark,
      home: const ReadTagView(),
    );
  }
}
