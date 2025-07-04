import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  final List<Map<String, String>> activities = const [
    {
      'title': 'Vocational Training',
      'description': 'Helping individuals become self-reliant through various skill-based training programs.',
    },
    {
      'title': 'Special Education',
      'description': 'Providing custom learning experiences based on individual needs and capabilities.',
    },
    {
      'title': 'Healthcare Services',
      'description': 'Regular medical checkups, therapy, and mental health services.',
    },
    {
      'title': 'Shelter & Care',
      'description': 'Safe living spaces with round-the-clock support and care.',
    },
    {
      'title': 'Recreational Activities',
      'description': 'Music, dance, yoga, and celebrations for emotional well-being.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Our Activities')),
      drawer: const CustomDrawer(),
      body: ListView.builder(
        itemCount: activities.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final activity = activities[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                leading: const Icon(Icons.check_circle_outline, color: Colors.indigo),
                title: Text(
                  activity['title'] ?? '',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    activity['description'] ?? '',
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
