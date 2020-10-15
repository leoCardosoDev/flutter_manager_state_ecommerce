import 'package:flutter/material.dart';
import 'package:manager_state_ecommerce/providers/cart/cart.dart';
import 'package:manager_state_ecommerce/providers/products.dart';
import 'package:manager_state_ecommerce/utils/app_routes.dart';
import 'package:manager_state_ecommerce/views/product_details_screen.dart';
import 'package:manager_state_ecommerce/views/products_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.purpleAccent,
          fontFamily: 'Lato',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductOverviewScreen(),
        routes: {
          AppRoutes.productDetailRoute: (_) => ProductDetailScreen(),
        },
      ),
    );
  }
}
