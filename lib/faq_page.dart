// faq_page.dart
import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatSync FAQ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Frequently Asked Questions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '1. How do I reset my password?',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '   You can reset your password from the login screen by clicking "Forgot Password".',
            ),
            SizedBox(height: 10),
            Text(
              '2. Is ChatSync secure?',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '   Yes, ChatSync uses end-to-end encryption to secure your messages.',
            ),
            SizedBox(height: 10),
            Text(
              '3. How do I contact support?',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '   You can reach out to us at support@chatsync.com.',
            ),
          ],
        ),
      ),
    );
  }
}