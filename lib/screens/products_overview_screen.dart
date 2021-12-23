import 'package:flutter/material.dart';
import 'package:multi_provider/providers/cart.dart';
import 'package:multi_provider/widgets/badge.dart';
import 'package:provider/provider.dart';

import '../widgets/product_grid.dart';
import 'cart_screen.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, ch) {
              return Badge(child: ch, value: value.jumlah.toString());
            },
            child: IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  CartScreen.routeName,
                );
              },
            ),
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
