
import 'package:ecommers_app/pages/cart_page.dart';
import 'package:ecommers_app/pages/intro_pages.dart';
import 'package:ecommers_app/pages/shop_page.dart';
import 'package:ecommers_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:lightMode,
      home: const IntroPage(),//first page
      routes: {
        "/intro_page":(context)=>const IntroPage(),
        "/shop_page":(context)=>const ShopPage(),
        "/cart_page":(context)=>const CartPage(),
      },
    );
  }
}
