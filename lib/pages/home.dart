import 'package:flutter/material.dart';
import 'package:flutter_web/pages/containers/container1.dart';
import 'package:flutter_web/pages/containers/container2.dart';
import 'package:flutter_web/pages/containers/container3.dart';
import 'package:flutter_web/pages/containers/container4.dart';
import 'package:flutter_web/pages/containers/container5.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Navbar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            Container5()
          ],
        ),
      )),
    );
  }
}
