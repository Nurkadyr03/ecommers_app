
import 'package:ecommers_app/components/my_drawer.dart';
import 'package:ecommers_app/components/my_product_tile.dart';
import 'package:ecommers_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          elevation: 0,
          title: const Text("Shop Page"),
          actions: [
            //go to cart button
            IconButton(
              onPressed: () => Navigator.pushNamed(context, "/cart_page"),
              icon:const Icon(
                Icons.shopping_cart,
              ),
            ),
          ]),
      drawer: const MyDrawer(),
      body: ListView(
        children: [
          //subititle
          Center(
            child: Text(
              "Pict from a selected list of premium products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),

          //product list
          SizedBox(
            height: 550,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                padding: const EdgeInsets.all(24),
                itemBuilder: (context, index) {
                  //get each individual product from shop
                  final product = products[index];

                  //return as product tile UI
                  return MyProductTile(product: product);
                }),
          ),
        ],
      ),
    );
  }
}
