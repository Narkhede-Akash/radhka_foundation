import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/activities_screen.dart';
import 'screens/gallery_screen.dart';
import 'screens/doctors_screen.dart';
import 'screens/donate_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radhka Foundation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutPage(),
        '/activities': (context) => const ActivitiesPage(),
        '/gallery': (context) => const GalleryPage(),
        '/doctors': (context) => const DoctorsPage(),
        '/donate': (context) => const DonatePage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}
