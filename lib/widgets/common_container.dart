import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';

import 'package:flutter_web/utils/constants.dart';

Widget Common_container(String s1, s2, s3, image, bool image_left) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(children: [
      image_left
          ? Expanded(
              child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.contain))))
          : Container(),
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            s1.toUpperCase(),
            style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            s2,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                height: 1.1,
                fontSize: w! / 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            s3,
            // textAlign: image_left ? TextAlign.right : TextAlign.left,
            style: TextStyle(
                color: Colors.grey.shade400,
                // fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text(
              "Learn More",
              style: TextStyle(color: Mycolors.primary_color),
            ),
            icon: Icon(Icons.arrow_forward,
                color: Mycolors.primary_color, size: 20),
          )
        ],
      )),
      !image_left
          ? Expanded(
              child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.contain))))
          : Container(),
    ]),
  );
}

Widget Common_container_mobile(
  String s1,
  s2,
  s3,
  image,
) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.contain))),
      SizedBox(
        height: 10,
      ),
      Text(
        s1.toUpperCase(),
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        s2,
        textAlign: TextAlign.center,
        // textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            height: 1.1,
            fontSize: w! / 10),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        s3,
        textAlign: TextAlign.center,
        // textAlign: image_left ? TextAlign.right : TextAlign.left,
        style: TextStyle(
            color: Colors.grey.shade400,
            // fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
      SizedBox(
        height: 20,
      ),
      TextButton.icon(
        onPressed: () {},
        label: Text(
          "Learn More",
          style: TextStyle(color: Mycolors.primary_color),
        ),
        icon:
            Icon(Icons.arrow_forward, color: Mycolors.primary_color, size: 20),
      )
    ]),
  );
}
