import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Map<String, dynamic> productData;
  const ItemCard({super.key, required this.productData});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(productData['thumbnail']),
          ListTile(
            title: Text(productData['title']),
            subtitle: Text(productData['description']),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price: \$${productData['price']}'),
                Text('Rating: ${productData['rating']}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
