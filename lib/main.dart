import 'package:flutter/material.dart';
import 'package:flutter_web/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Xpense',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
        brightness: Brightness.light,
        // primaryColor: Colors.white,
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      // A widget which will be started on application startup
    );
  }
}
