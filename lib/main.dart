import 'package:dpshoping/pages/CartPage.dart';
import 'package:dpshoping/pages/ItemPage.dart';
import 'package:flutter/material.dart';

import 'pages/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        "/":(context) => HomePage(),
        "cartPage":(context) => CartPage(),
        "itemPage":(context) => ItemPage(),
      },
    );
  }
  
}