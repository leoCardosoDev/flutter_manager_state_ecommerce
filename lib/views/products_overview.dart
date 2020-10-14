import 'package:flutter/material.dart';
import 'package:manager_state_ecommerce/widgets/product_item.dart';
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
        itemBuilder: (context, index) => ProductItem(loadedProducts[index]),
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
