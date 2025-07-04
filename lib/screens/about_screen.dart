import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Us")),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "About Radhaka Foundation",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              "Radhaka Foundation is a non-profit organization working toward rural development, education, and social welfare. We believe in empowering people through education, health awareness, and inclusive support systems to bring sustainable change in society.",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 24),
            const Divider(),

            const SizedBox(height: 16),
            const Text(
              "Founder",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/founder.png',
                    height: 100,
                    width: 100,
                    // fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    "Shri. Ajayji Raskar is the visionary founder of Radhaka Foundation, driven by a passion to uplift the underprivileged sections of society. His leadership and commitment have been instrumental in initiating various welfare programs across Maharashtra.",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            const Divider(),

            const SizedBox(height: 16),
            const Text(
              "Our Vision",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "To build a socially empowered and self-reliant rural India through education, awareness, and inclusive development.",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 24),
            const Text(
              "Our Mission",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "- Promote education and literacy in rural areas\n"
                  "- Organize health and awareness campaigns\n"
                  "- Support women and child development initiatives\n"
                  "- Provide skill development and training programs\n"
                  "- Create a network of social volunteers for outreach",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
