import 'package:flutter/material.dart';
import 'package:state_management_online/home.dart';
import 'package:state_management_online/login.dart';
import 'package:state_management_online/provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {



    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Management',
        initialRoute: 'login',
        routes: {
          'login':(context) => Login(),
          'home' : (context) => Home(),
        },
      ),
    );
  }
}
