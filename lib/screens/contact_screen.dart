import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Get in Touch',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            _contactRow(Icons.phone, 'Phone', '+91 9158811581'),
            _contactRow(Icons.email, 'Email', 'radhakafoundation@gmail.com'),
            _contactRow(Icons.location_on, 'Address',
                'Radhaka Foundation,\nAshok Nagar, Near Deshikendra School,\nLatur - 413512'),

            const SizedBox(height: 24),
            const Divider(),

            const SizedBox(height: 16),
            const Text(
              'Send Us a Message',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),
            _buildTextField(label: 'Name'),
            _buildTextField(label: 'Email'),
            _buildTextField(label: 'Phone'),
            _buildTextField(label: 'Message', maxLines: 4),

            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Future: send message via backend
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Message sending coming soon...")),
                  );
                },
                icon: const Icon(Icons.send),
                label: const Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _contactRow(IconData icon, String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.indigo),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                Text(content),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({required String label, int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
