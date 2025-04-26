import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder inventory
    final items = [
      {'name': 'XP Potion', 'desc': 'Grants 100 XP.'},
      {'name': 'Gold Coin', 'desc': 'Spend in the shop.'},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Inventory')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) {
          final item = items[i];
          return Card(
            child: ListTile(
              title: Text(item['name']!),
              subtitle: Text(item['desc']!),
            ),
          );
        },
      ),
    );
  }
}
