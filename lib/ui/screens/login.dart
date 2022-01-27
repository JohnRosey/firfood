import 'package:firfood/google_sign_in_button.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Private methods within build method help us to
    // organize our code and recognize structure of widget
    // that we're building:
    BoxDecoration _buildBackground() {
      return const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/splash.png"),
          fit: BoxFit.cover,
        ),
      );
    }

    Text _buildText() => Text(
          'App name ',
          style: const TextStyle(
            fontFamily: 'MerryWeather',
            fontSize: 40.0,
            color: Color(0xFF00C6FF),
          ),
          textAlign: TextAlign.center,
        );

    return Scaffold(
      // We do not use backgroundColor property anymore.
      // New Container widget wraps our Center widget:
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildText(),
              const SizedBox(height: 50.0),
              GoogleSignInButton(
                onPressed: () =>
                    Navigator.of(context).pushReplacementNamed('/'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
