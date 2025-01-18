// main.dart
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'faq_page.dart';
import 'registration_page.dart';
import 'chat_page.dart';

void main() {
  runApp(const ChatSyncApp());
}

class ChatSyncApp extends StatelessWidget {
  const ChatSyncApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatSync',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/registration': (context) => RegistrationPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/faq': (context) => const FAQPage(),
        '/chat': (context) => const ChatPage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatSync'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registration');
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}