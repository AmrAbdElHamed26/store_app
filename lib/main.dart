import 'package:flutter/material.dart';
import 'package:store_app/update_product_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        HomePage.id : (context)=>HomePage(),
        UpdateProductPage.id : (context)=>UpdateProductPage(),
      },

      debugShowCheckedModeBanner: false ,
      color: Colors.white,
      title: 'Flutter Demo',
      initialRoute : HomePage.id,
    );
  }
}

