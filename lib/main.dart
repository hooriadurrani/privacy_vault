
import 'package:flutter/material.dart';

//import 'home_screen.dart';
//import 'receipt_list_screen.dart';
//import 'add_receipt_screen.dart';
import 'vault_records_screen.dart';

void main() {
  runApp(const PrivacyVaultApp());
}

class PrivacyVaultApp extends StatelessWidget {
  const PrivacyVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Privacy Vault',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6750A4),
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F7FC),
      ),

      // DISPLAY ONE SCREEN AT A TIME

    //  home: const HomeScreen(),

      // home: const ReceiptListScreen(),

       //home: const AddReceiptScreen(),

       home: const VaultRecordsScreen(),
    );
  }
}
//flutter run -d web-server --web-port 8080
