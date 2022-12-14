import 'package:flutter/material.dart';
import 'package:store/screens/home_page.dart';
import 'package:store/screens/update_product_page.dart';


void main() {
  runApp(StoreApp());
}

@override
class StoreApp extends StatelessWidget {
  StoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
    );
  }
}
