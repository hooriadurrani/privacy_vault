
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6750A4),
        title: const Text(
          'Privacy Vault',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.shield,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),

              const Text(
                'Welcome to Privacy Vault',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF35265E),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Your receipts, warranties and personal data in one secure place.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 15),

              // Large Privacy Image
              Center(
                child: Image.asset(
                  'assets/images/privacy.png',
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Text('Privacy image not found');
                  },
                ),
              ),

              const SizedBox(height: 15),

              // Personal Vault Container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF6750A4),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.lock,
                      size: 35,
                      color: Colors.white,
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'Your Personal Vault',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Keep your important purchase records organized and private.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Receipt Image
                    Center(
                      child: Image.asset(
                        'assets/images/receipt.png',
                        height: 170,
                        width: double.infinity,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Text(
                            'Receipt image not found',
                            style: TextStyle(color: Colors.white),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Vault Overview',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.receipt_long,
                              color: Color(0xFF6750A4),
                              size: 32,
                            ),

                            const SizedBox(height: 10),

                            const Text(
                              '12',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const Text('Receipts'),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.verified_user,
                              color: Color(0xFF6750A4),
                              size: 32,
                            ),

                            const SizedBox(height: 10),

                            const Text(
                              '8',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const Text('Warranties'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Privacy Records summary (display-only; navigation is not part of this assignment)
              Card(
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/privacy.png',
                    width: 65,
                    height: 65,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.privacy_tip,
                        color: Color(0xFF6750A4),
                        size: 38,
                      );
                    },
                  ),
                  title: const Text('Privacy Records'),
                  subtitle: const Text('5 saved consent records'),
                  trailing: const Icon(Icons.check_circle_outline, color: Color(0xFF6750A4)),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Quick Actions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Add New Receipt summary (display-only)
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.receipt_long,
                    color: Color(0xFF6750A4),
                    size: 35,
                  ),
                  title: const Text('Add New Receipt'),
                  subtitle: const Text('View your purchase records'),
                  trailing: const Icon(Icons.check_circle_outline, color: Color(0xFF6750A4)),
                ),
              ),

              const SizedBox(height: 10),

              // Create New Receipt summary (display-only)
              Card(
                child: ListTile(
                  leading: const Icon(
                    Icons.add_circle_outline,
                    color: Color(0xFF6750A4),
                    size: 35,
                  ),
                  title: const Text('Create New Receipt'),
                  subtitle: const Text(
                    'Enter details of a new purchase',
                  ),
                  trailing: const Icon(Icons.check_circle_outline, color: Color(0xFF6750A4)),
                ),
              ),

              const SizedBox(height: 10),

              // Warranty Tracker
              Card(
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/warranty.png',
                    width: 65,
                    height: 65,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.calendar_month,
                        color: Color(0xFF6750A4),
                        size: 38,
                      );
                    },
                  ),
                  title: const Text('Warranty Tracker'),
                  subtitle: const Text('View warranty expiry dates'),
                  trailing: const Icon(Icons.check_circle_outline, color: Color(0xFF6750A4)),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
