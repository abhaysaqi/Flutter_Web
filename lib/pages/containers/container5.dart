import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/common_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({Key? key}) : super(key: key);

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile_Container5(),
      desktop: Desktop_Container5(),
    );
  }

  Widget Desktop_Container5() {
    return Common_container(
        "Use anytime",
        "Use anytime \nwhen you \nneed",
        "Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.",
        "assets/images/illustration3.png",
        false);
  }

  Widget Mobile_Container5() {
    return Common_container_mobile(
      "Use anytime",
      "Use anytime \nwhen you \nneed",
      "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
      "assets/images/illustration3.png",
    );
  }
}
