import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/common_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile_Container4(),
      desktop: Desktop_Container4(),
    );
  }

  Widget Desktop_Container4() {
    return Common_container(
        "free some cost",
        "Save cost \nfor you \nand family",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.",
        'assets/images/Illustration2.png',
        true);
  }

  Widget Mobile_Container4() {
    return Common_container_mobile(
      "free some cost",
      "Save cost \nfor you \nand family",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      'assets/images/Illustration2.png',
    );
  }
}
