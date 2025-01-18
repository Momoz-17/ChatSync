import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map<String, String>?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatSync Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${arguments?['name'] ?? 'N/A'}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Email: ${arguments?['email'] ?? 'N/A'}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Age: ${arguments?['age'] ?? 'N/A'}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
