import 'package:flutter/material.dart';
import 'package:firfood/ui/screens/login.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recettes',
      initialRoute: '/login',
      routes: {
        '/': (context) => Login(),
        'login': (context) => Login(),
      },
    );
  }
}
