import 'package:flutter/material.dart';

class QuestsScreen extends StatelessWidget {
  const QuestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder quest list
    final quests = [
      {'title': 'Morning Routine', 'desc': 'Complete your morning routine.', 'xp': 50, 'gold': 10},
      {'title': 'Deep Work', 'desc': 'Focus for 2 hours on a key task.', 'xp': 100, 'gold': 25},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Quests')),
      body: ListView.builder(
        itemCount: quests.length,
        itemBuilder: (context, i) {
          final q = quests[i];
          return Card(
            child: ListTile(
              title: Text(q['title']!),
              subtitle: Text(q['desc']!),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('XP: ${q['xp']}'),
                  Text('Gold: ${q['gold']}'),
                ],
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Quest Complete!'),
                    content: const Text('You gained XP and gold!'),
                    actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
