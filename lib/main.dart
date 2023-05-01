import 'package:flutter/material.dart';
import 'package:xo/Login.dart';
import 'package:xo/XO.dart';
import 'package:xo/splach.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      initialRoute:SPLA.routename ,
      routes: {
        XO.Routename:(context)=>XO(),
        SPLA.routename:(context)=>SPLA(),
        Login.routeName:(context)=>Login(),

      },

    );

  }
}

