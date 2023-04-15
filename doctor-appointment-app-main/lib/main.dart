import 'package:flutter/material.dart';
import 'package:medicare/routes/router.dart';
import 'package:medicare/utils/textscale.dart';
import 'package:medicare/screens/login.dart';
void main() {
  //runApp( Login());
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: fixTextScale,
     // debugShowCheckedModeBanner: true,
      initialRoute: '/login',
      routes: routes,
    );
  }
}
