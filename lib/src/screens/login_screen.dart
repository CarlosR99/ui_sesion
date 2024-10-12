import 'package:flutter/material.dart';
import 'package:ui_sesion/src/util/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackgroud(
            child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 250),
          CardContainer(
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text('Login'),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        icon: Icon(Icons.alternate_email, color: Colors.black),
                        hintText: 'Email',
                        labelText: 'Email'),
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    autocorrect: false,
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline, color: Colors.black),
                        hintText: 'Password',
                        labelText: 'Password'),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'home');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 15),
                      textStyle: const TextStyle(fontSize: 17)),
                  child: const Text('Ingresar'),
                ),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
