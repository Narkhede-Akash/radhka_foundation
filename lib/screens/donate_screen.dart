import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Donate')),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Support Radhaka Foundation',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Your donations help us provide lifelong care for mentally challenged individuals. You can contribute through bank transfer or UPI.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Bank Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _bankDetail('Bank Name', 'Catholic Syrian Bank'),
            _bankDetail('Branch', 'Sector 14, Near Pyal Cinema Gurgaon-122001'),
            _bankDetail('Account Name', 'Radhaka Autism Welfare Society'),
            _bankDetail('Account Number', '0316-04044778-195001'),
            _bankDetail('IFSC Code', 'CSBK0000316'),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Future: Integrate UPI/payment
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Redirecting to payment gateway soon..."),
                    ),
                  );
                },
                icon: const Icon(Icons.favorite),
                label: const Text('Donate Now'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _bankDetail(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(child: Text(value)),
        ],
      ),
    );
  }
}
