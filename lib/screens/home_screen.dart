import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radhka Foundation'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/banner.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: SectionTitle(title: 'Who We Are'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'We are a charitable organization working for the lifelong care of mentally challenged individuals.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/about'),
                    child: const Text('About Us'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/activities'),
                    child: const Text('Our Activities'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/donate'),
                    child: const Text('Donate Now'),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: SectionTitle(title: 'Gallery Preview'),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _galleryImage('assets/images/gallery1.jpg'),
                  _galleryImage('assets/images/gallery2.jpg'),
                  _galleryImage('assets/images/gallery3.jpg'),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _galleryImage(String path) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          path,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
