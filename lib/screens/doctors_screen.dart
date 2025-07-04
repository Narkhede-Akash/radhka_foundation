import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({super.key});

  final List<Map<String, String>> doctors = const [
    {
      'name': 'Dr. Meenakshi kapor Dermatech',
      'specialty': 'Psychiatrist',
      'image': 'assets/images/avatar.png',
    },
    {
      'name': 'Dr. Vivek Pediatric',
      'specialty': 'Neurologist',
      'image': 'assets/images/avatar.png',
    },
    {
      'name': 'Dr. Raman Psychiatrist',
      'specialty': 'Therapist',
      'image': 'assets/images/avatar.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Our Doctors')),
      drawer: const CustomDrawer(),
      body: ListView.builder(
        itemCount: doctors.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  doctor['image'] ?? 'assets/images/avatar.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                doctor['name'] ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(doctor['specialty'] ?? ''),
            ),
          );
        },
      ),
    );
  }
}
