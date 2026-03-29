import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String name = '', age = '', gender = '', dob = '', username = '', password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(decoration: InputDecoration(labelText: "Name"),
                onSaved: (val) => name = val!),

              TextFormField(decoration: InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
                onSaved: (val) => age = val!),

              TextFormField(decoration: InputDecoration(labelText: "Gender"),
                onSaved: (val) => gender = val!),

              TextFormField(decoration: InputDecoration(labelText: "DOB"),
                onSaved: (val) => dob = val!),

              TextFormField(decoration: InputDecoration(labelText: "Username"),
                onSaved: (val) => username = val!),

              TextFormField(decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                onSaved: (val) => password = val!),

              SizedBox(height: 20),

              ElevatedButton(
                child: Text("Register"),
                onPressed: () {
                  _formKey.currentState!.save();

                  Navigator.pushNamed(context, '/login',
                      arguments: {
                        'username': username,
                        'password': password
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
