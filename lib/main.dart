import 'package:ecommers_app/app.dart';
import 'package:ecommers_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create:(context) =>Shop() ,
    child:const MyApp() ,)
  );
}

