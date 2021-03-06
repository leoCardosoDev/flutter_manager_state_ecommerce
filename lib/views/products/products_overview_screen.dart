import 'package:flutter/material.dart';
import 'package:manager_state_ecommerce/providers/cart/cart.dart';
import 'package:manager_state_ecommerce/utils/app_routes.dart';
import 'package:manager_state_ecommerce/widgets/badge.dart';
import 'package:manager_state_ecommerce/widgets/product_grid.dart';
import 'package:provider/provider.dart';

enum FilterOptions { Favorite, All }

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  bool _showFavoriteOnly = false;
  @override
  Widget build(BuildContext context) {
    print('RECONSTRUINDO O BUILD');
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorite) {
                  _showFavoriteOnly = true;
                } else {
                  _showFavoriteOnly = false;
                }
              });
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                value: FilterOptions.Favorite,
                child: Text('Somente Favoritos'),
              ),
              PopupMenuItem(
                value: FilterOptions.All,
                child: Text('Todos'),
              ),
            ],
          ),
          Consumer<Cart>(
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.cartDetailRoute, arguments: null);
                },
              ),
              builder: (_, cart, child) {
                return Badge(
                  value: cart.itemCount.toString(),
                  child: child,
                );
              }),
        ],
      ),
      body: ProductGrid(_showFavoriteOnly),
    );
  }
}
