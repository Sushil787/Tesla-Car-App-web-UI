import 'package:flutter/material.dart';
import 'package:apptesla/constants/constant.dart';

class SquareIconButton extends StatelessWidget {
  final IconData iconData;

  const SquareIconButton({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 129.0,
        width: 129.0,
        decoration: BoxDecoration(
            color: ColorConstant.lightPink1,
            borderRadius: const BorderRadius.all(Radius.circular(26))),
        child: Icon(
          iconData,
          size: 37.5,
          color: ColorConstant.lightPink3,
        ));
  }
}
