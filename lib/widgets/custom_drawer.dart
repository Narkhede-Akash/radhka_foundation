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
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            child: Center(
              child: Image.asset(
                'assets/images/founder.png',
                width: 300,
                height: 100,
                fit: BoxFit.contain,
              ),
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
    final currentRoute = ModalRoute
        .of(context)
        ?.settings
        .name;
    final isSelected = currentRoute == route;

    return ListTile(
      selected: isSelected,
      selectedTileColor: Colors.indigo.shade100,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 25,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: isSelected ? Colors.black : Colors.black87,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => _getPageFromRoute(route),
            settings: RouteSettings(name: route), // ✅ Important!
          ),
        );
      },
    );
  }
}