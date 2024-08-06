import 'package:flutter/material.dart';
import 'package:shared_prefernces/screen/splash%20Screen.dart';

import 'loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home:const  SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
State<StatefulWidget> createState() {
   return _MyHomePageState();
  }
    }

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title:const Text("Shared Preferences"),
      ),
      body:Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
        }
          ,child: const Text('Logout'),),
      )
    );
  }
}
