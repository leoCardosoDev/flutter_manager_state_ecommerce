import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/product.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: loadedProducts.length,
        itemBuilder: (context, index) => Text(loadedProducts[index].title),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
      ),
    );
  }
}
