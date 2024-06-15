import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/common_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile_Container3(),
      desktop: Desktop_Container3(),
    );
  }

  Widget Desktop_Container3() {
    return Common_container(
        "always online",
        "Real-time support \nwith cloud",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.",
        'assets/images/Illustrator.png',
        false);
  }

  Widget Mobile_Container3() {
    return Common_container_mobile(
      "always online",
      "Real-time support \nwith cloud",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      'assets/images/Illustrator.png',
    );
  }
}
