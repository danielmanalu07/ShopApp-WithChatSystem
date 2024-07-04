import 'package:flutter/material.dart';
import 'package:shop_app/views/screens/auth/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const LoginScreen({super.key});
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  late String email;

  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formkey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN ACCOUNT",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 4,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: (value) {
                email = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Email Address Must Not Be Empty';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Email Address",
                hintText: 'Enter Email Address',
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.pink,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              onChanged: (value) {
                password = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Password Must Not Be Empty';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Password",
                hintText: 'Enter Password',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.pink,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  print('Logged In');
                  print(email);
                  print(password);
                } else {
                  print('unable to unauthenticate user');
                }
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 250,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                );
              },
              child: Text("Need An Account?"),
            ),
          ],
        ),
      ),
    ));
  }
}
