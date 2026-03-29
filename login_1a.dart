import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final userController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: userController, decoration: InputDecoration(labelText: "Username")),
            TextField(controller: passController, decoration: InputDecoration(labelText: "Password"), obscureText: true),

            ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                if (userController.text == data['username'] &&
                    passController.text == data['password']) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Successful")));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Invalid Credentials")));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
