import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile_Container2(),
      desktop: Desktop_Container2(),
    );
  }

  Widget Mobile_Container2() {
    return Container(
      // height: 900,
      width: double.infinity,
      color: Mycolors.primary_color,
      child: Column(
        children: [
          // Positioned(
          //     right: -20,
          //     top: -20,
          //     child: Container(
          //       height: 320,
          //       width: 320,
          //       decoration: BoxDecoration(
          //           image: DecorationImage(
          //               image: AssetImage("assets/images/vector.png"))),
          //     )),
          // Positioned(
          //     left: -20,
          //     bottom: -20,
          //     child: Container(
          //       height: 320,
          //       width: 320,
          //       decoration: BoxDecoration(
          //           image: DecorationImage(
          //               image: AssetImage("assets/images/vector1.png"))),
          //     )),

          Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 0, left: 20, right: 20, top: 20),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/dashboard.png"),
                        fit: BoxFit.contain)),
              )),

          Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Company_logo("assets/images/fb.png"),
                  Company_logo("assets/images/google.png"),
                  Company_logo("assets/images/cocacola.png"),
                  Company_logo("assets/images/linkedin.png"),
                  Company_logo("assets/images/samsung.png"),
                ],
              ))
        ],
      ),
    );
  }

  Widget Desktop_Container2() {
    return Container(
      height: 900,
      width: double.infinity,
      color: Mycolors.primary_color,
      child: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  right: -20,
                  top: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/vector.png"))),
                  )),
              Positioned(
                  left: -20,
                  bottom: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/vector1.png"))),
                  )),
              Positioned(
                  left: 45,
                  right: 45,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 700,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/dashboard.png"),
                            fit: BoxFit.contain)),
                  ))
            ],
          )),
          Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Company_logo("assets/images/fb.png"),
                  Company_logo("assets/images/google.png"),
                  Company_logo("assets/images/cocacola.png"),
                  Company_logo("assets/images/linkedin.png"),
                  Company_logo("assets/images/samsung.png"),
                ],
              ))
        ],
      ),
    );
  }

  Widget Company_logo(String image) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }
}
