import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:propertapp/utils/constants.dart';
import 'package:propertapp/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final double? width;

  const OptionButton({Key? key, required this.text, this.icon, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: colorDarkBlue,
            backgroundColor: colorWhite.withAlpha(55),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: colorWhite,
              ),
              addHorizontalSpace(10),
              Text(
                text!,
                style: const TextStyle(color: colorWhite),
              )
            ],
          )),
    );
  }
}
