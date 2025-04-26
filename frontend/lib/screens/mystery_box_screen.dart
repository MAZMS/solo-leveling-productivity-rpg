import 'package:flutter/material.dart';
import 'dart:math';

class MysteryBoxScreen extends StatelessWidget {
  const MysteryBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final rng = Random();
    final rewards = [
      'You found 50 gold!',
      'A wild Mentor appears: +1 productivity tip!',
      'XP Boost: +100 XP!',
      'Nothing... this time. Try again tomorrow!'
    ];
    final reward = rewards[rng.nextInt(rewards.length)];
    return Scaffold(
      appBar: AppBar(title: const Text('Mystery Box')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.card_giftcard, size: 80, color: Colors.deepPurple),
            const SizedBox(height: 24),
            Text(
              reward,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
