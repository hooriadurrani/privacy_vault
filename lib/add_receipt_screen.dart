import 'package:flutter/material.dart';

class AddReceiptScreen extends StatelessWidget {
  const AddReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6750A4),
        title: const Text(
          'Create New Receipt',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.receipt_long, size: 64, color: Color(0xFF6750A4)),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Enter Receipt Details',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF35265E),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Product Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.shopping_bag),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Store Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.store),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Purchase Date',
                hintText: 'e.g. 16 October 2026',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.calendar_month),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Price (Rs.)',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.currency_exchange),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6750A4),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16),
                ),
                icon: const Icon(Icons.save),
                label: const Text('Save Receipt'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Demo form only: receipt details are not saved.'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
