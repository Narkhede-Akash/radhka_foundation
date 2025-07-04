// custom_drawer.dart
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/about_screen.dart';
import '../screens/activities_screen.dart';
import '../screens/gallery_screen.dart';
import '../screens/doctors_screen.dart';
import '../screens/donate_screen.dart';
import '../screens/contact_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          _drawerItem(context, 'Home', '/'),
          _drawerItem(context, 'About', '/about'),
          _drawerItem(context, 'Activities', '/activities'),
          _drawerItem(context, 'Gallery', '/gallery'),
          _drawerItem(context, 'Doctors', '/doctors'),
          _drawerItem(context, 'Donate', '/donate'),
          _drawerItem(context, 'Contact', '/contact'),
        ],
      ),
    );
  }
  Widget _getPageFromRoute(String route) {
    switch (route) {
      case '/about':
        return const AboutPage();
      case '/activities':
        return const ActivitiesPage();
      case '/gallery':
        return const GalleryPage();
      case '/doctors':
        return const DoctorsPage();
      case '/donate':
        return const DonatePage();
      case '/contact':
        return const ContactPage();
      default:
        return const HomeScreen();
    }
  }

  ListTile _drawerItem(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        // Navigator.pushNamed(context, route);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => _getPageFromRoute(route)),
        );

      },
    );
  }
}
