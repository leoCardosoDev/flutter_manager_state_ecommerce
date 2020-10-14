import 'package:flutter/material.dart';
import 'package:manager_state_ecommerce/utils/app_routes.dart';
import 'package:manager_state_ecommerce/views/product_details_screen.dart';
import 'package:manager_state_ecommerce/views/products_overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    );
  }
}
