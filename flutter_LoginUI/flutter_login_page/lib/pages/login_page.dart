import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _loginFormKey = GlobalKey();
  String? username, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login", textAlign: TextAlign.right),
      ),
      body: SafeArea(child: _bodyUI()),
    );
  }

  Widget _bodyUI() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_title(), _loginForm()],
      ),
    );
  }

  Widget _title() {
    return const Text(
      "My Cool App",
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
    );
  }

  Widget _loginForm() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.90,
      height: MediaQuery.sizeOf(context).height * 0.30,
      child: Form(
        key: _loginFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              onSaved: (value) {
                setState(() {
                  username = value;
                });
              },
              decoration: InputDecoration(hintText: "Username"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter a vaild username";
                }
              },
            ),
            TextFormField(
              onSaved: (value) {
                setState(() {
                  password = value;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter a vaild password";
                }
              },
              decoration: InputDecoration(hintText: "Password"),
            ),
            _loginButton(),
          ],
        ),
      ),
    );
  }

  Widget _loginButton() {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.60,
      child: ElevatedButton(
        onPressed: () {
          if (_loginFormKey.currentState?.validate() ?? false) {
            _loginFormKey.currentState?.save();
            print("$username : $password");
          }
        },
        child: const Text("Login"),
      ),
    );
  }
}
