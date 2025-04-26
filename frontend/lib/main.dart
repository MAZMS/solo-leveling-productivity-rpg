import 'package:flutter/material.dart';

void main() {
  runApp(const SoloLevelingApp());
}

class SoloLevelingApp extends StatelessWidget {
  const SoloLevelingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solo Leveling Productivity RPG',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solo Leveling RPG'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome, Hunter!\nLevel up your life by completing quests.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: const Text('View Quests'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Inventory'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Mystery Box!'),
            ),
          ],
        ),
      ),
    );
  }
}
