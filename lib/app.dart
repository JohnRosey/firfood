import 'package:flutter/material.dart';
import 'package:firfood/ui/screens/login.dart';

import 'ui/screens/home.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recettes',
      initialRoute: '/login',
      routes: {
        '/': (context) => HomeScreen(),
        'login': (context) => Login(),
      },
    );
  }
}
