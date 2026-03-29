import 'package:flutter/material.dart';
import 'profile_1b.dart';

class LoginPage extends StatelessWidget {
  final user = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        children: [
          TextField(controller: user, decoration: InputDecoration(labelText: "Username")),
          TextField(controller: pass, decoration: InputDecoration(labelText: "Password")),

          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProfilePage(username: user.text),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
