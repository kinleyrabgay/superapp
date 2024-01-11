import 'package:flutter/material.dart';
import 'package:superbt/core/utils/item.dart';
import 'package:superbt/src/explore/presentation/widgets/card.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Trending now'),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: productListData.length,
          //     itemBuilder: (context, index) {
          //       final productData = productListData[index];
          //       return ItemCard(productData: productData);
          //     },
          //   ),
          // ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
              ),
              itemBuilder: (context, index) {
                final productData = productListData[index];
                // return ItemCard(productData: productData);
                return featureCard(context, productData);
              },
              itemCount: productListData.length,
            ),
          )
        ],
      ),
    );
  }

  Container featureCard(BuildContext context, productData) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.grey[300]!,
        ),
      ),
      child: Column(
        children: [
          Image.network(
            productData['thumbnail'],
            height: 150, // Adjust the height as needed
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(productData['title']),
            // subtitle: Text(productData['description']), // Uncomment if you have a description in your data
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
