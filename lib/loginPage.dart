import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefernces/screen/splash%20Screen.dart';

import 'main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(21.0),
                child: Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.blue,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    label: const Text('Email'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              const SizedBox(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                  label: const Text('Password'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),),

                ),

                obscureText: true,

              ),
              const SizedBox(
                height: 11,
              ),
              ElevatedButton(
                  onPressed: () async {
                    //IF Successfully Logged in (Creds are Correct)
                    var sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setBool(SplashScreenState.KEYLOGIN, true);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
