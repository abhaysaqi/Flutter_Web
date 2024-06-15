import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile_Navbar(),
      desktop: Desktop_Navbar(),
      // tablet: ,
    );
  }

  Widget Mobile_Navbar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.menu), Nav_logo()],
      ),
    );
  }

  Widget Desktop_Navbar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Nav_logo(),
          Row(
            children: [
              Nav_button("Features"),
              Nav_button("About us"),
              Nav_button("Pricing"),
              Nav_button("Feedback"),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Request a Demo",
                    style:
                        TextStyle(fontSize: 18, color: Mycolors.primary_color)),
                style: border_button_style),
          )
        ],
      ),
    );
  }

  Widget Nav_button(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18),
          )),
    );
  }

  Widget Nav_logo() {
    return Container(
      width: 110,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/logo.png'))),
    );
  }
}
