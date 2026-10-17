
import 'package:flutter/material.dart';

class ReceiptListScreen extends StatelessWidget {
  const ReceiptListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6750A4),
        title: const Text(
          'My Receipts',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Purchase Records',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF35265E),
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'All your receipts in one secure place.',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),

            const SizedBox(height: 20),

            const ReceiptCard(
              title: 'Mobile Phone',
              store: 'Samsung Store',
              date: '10 October 2026',
              price: 'Rs. 45,000',
              icon: Icons.phone_android,
            ),

            const ReceiptCard(
              title: 'Headphones',
              store: 'Tech World',
              date: '5 October 2026',
              price: 'Rs. 5,000',
              icon: Icons.headphones,
            ),

            const ReceiptCard(
              title: 'Laptop',
              store: 'Computer House',
              date: '1 October 2026',
              price: 'Rs. 120,000',
              icon: Icons.laptop,
            ),

            const ReceiptCard(
              title: 'Wrist Watch',
              store: 'Time Zone',
              date: '25 September 2026',
              price: 'Rs. 8,000',
              icon: Icons.watch,
            ),
          ],
        ),
      ),
    );
  }
}

class ReceiptCard extends StatelessWidget {
  final String title;
  final String store;
  final String date;
  final String price;
  final IconData icon;

  const ReceiptCard({
    super.key,
    required this.title,
    required this.store,
    required this.date,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              icon,
              size: 38,
              color: const Color(0xFF6750A4),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(store),
                  Text(
                    date,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            Text(
              price,
              style: const TextStyle(
                color: Color(0xFF6750A4),
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
