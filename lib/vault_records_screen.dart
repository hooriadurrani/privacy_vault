import 'package:flutter/material.dart';

class VaultRecordsScreen extends StatelessWidget {
  const VaultRecordsScreen({super.key});

  static const purple = Color(0xFF6750A4);
  static const heading = Color(0xFF35265E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purple,
        title: const Text(
          'Vault Records',
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
              'Privacy & Warranty Records',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: heading,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Review your saved consent records and keep track of product warranties.',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/privacy.png',
                      width: 76,
                      height: 76,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.privacy_tip, size: 52, color: purple),
                    ),
                    const SizedBox(width: 14),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Privacy Records', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 6),
                          Text('5 saved consent records'),
                          SizedBox(height: 4),
                          Text('Your data-sharing choices at a glance.', style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 22),
            const Text(
              'Warranty Tracker',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: heading),
            ),
            const SizedBox(height: 8),
            const Text('Sample warranty records', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 12),
            const WarrantyCard(
              product: 'Mobile Phone',
              company: 'Samsung Store',
              expiry: '10 October 2027',
              status: 'Active warranty',
              icon: Icons.phone_android,
            ),
            const WarrantyCard(
              product: 'Laptop',
              company: 'Computer House',
              expiry: '1 October 2027',
              status: 'Active warranty',
              icon: Icons.laptop,
            ),
            const WarrantyCard(
              product: 'Headphones',
              company: 'Tech World',
              expiry: '5 October 2026',
              status: 'Check expiry date',
              icon: Icons.headphones,
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFFEDE7F6),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info_outline, color: purple),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'These are sample records for the project demonstration. They are not connected to a database.',
                      style: TextStyle(color: heading, fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WarrantyCard extends StatelessWidget {
  final String product;
  final String company;
  final String expiry;
  final String status;
  final IconData icon;

  const WarrantyCard({
    super.key,
    required this.product,
    required this.company,
    required this.expiry,
    required this.status,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Icon(icon, size: 36, color: const Color(0xFF6750A4)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text(company, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 4),
                  Text('Expires: $expiry', style: const TextStyle(fontSize: 12)),
                  const SizedBox(height: 4),
                  Text(status, style: const TextStyle(color: Color(0xFF6750A4), fontWeight: FontWeight.w600, fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
