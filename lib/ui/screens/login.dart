import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Private methods within build method help us to
    // organize our code and recognize structure of widget
    // that we're building:
    Text _buildText() {
      return Text(
        'Plats Africains',
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildText(),
            // Space between "Recipes" and the button:
            SizedBox(height: 50.0),
            MaterialButton(
              color: Colors.white,
              child: Text("Se connecter avec  Google"),
              onPressed: () => print("Button pressed."),
            )
          ],
        ),
      ),
    );
  }
}
