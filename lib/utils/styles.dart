import 'package:flutter/material.dart';
import 'package:flutter_web/utils/colors.dart';

ButtonStyle border_button_style = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Mycolors.primary_color))));
