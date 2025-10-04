import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;
  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: item.name,
              child: Image.asset(item.imageUrl, height: 250, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(
              item.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Harga: Rp ${item.price}'),
            Text('Stok: ${item.stock}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text('${item.rating} / 5'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
