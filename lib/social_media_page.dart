import 'package:flutter/material.dart';

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({super.key});

  void showAccount(BuildContext context, String account) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected account: $account'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text(
            'Connect With Me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text('Tap an account to display its username.'),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(Icons.facebook, color: Theme.of(context).colorScheme.primary),
              title: const Text('Facebook'),
              subtitle: const Text('dionne.enola'),
              trailing: Icon(Icons.chevron_right, color: Theme.of(context).colorScheme.secondary),
              onTap: () => showAccount(context, 'Facebook: dionne.enola'),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.camera_alt, color: Colors.pink),
              title: const Text('Instagram'),
              subtitle: const Text('@dionne.enola'),
              trailing: Icon(Icons.chevron_right, color: Theme.of(context).colorScheme.secondary),
              onTap: () => showAccount(context, 'Instagram: @dionne.enola'),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.play_circle, color: Colors.red),
              title: const Text('YouTube'),
              subtitle: const Text('@DionneEnola'),
              trailing: Icon(Icons.chevron_right, color: Theme.of(context).colorScheme.secondary),
              onTap: () => showAccount(context, 'YouTube: @DionneEnola'),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Sample accounts only — Dionne Enola, CCE106 - 3447',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
