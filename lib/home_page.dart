import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Icon(
            Icons.home,
            size: 80,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 16),
          const Text(
            'Welcome, Dionne!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'Use the navigation bar below to explore the app. '
            'This application demonstrates a StatefulWidget with a '
            'Bottom Navigation Bar and four separate screens.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.calculate,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text('Calculator'),
                  subtitle: Text('Perform basic arithmetic operations.'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text('Profile'),
                  subtitle: Text('View your student information.'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(
                    Icons.share,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text('Social Media'),
                  subtitle: Text('View your sample social accounts.'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Dionne Enola\nCCE106 - 3447',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
