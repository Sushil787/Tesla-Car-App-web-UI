import 'package:apptesla/constants/constant.dart';
import 'package:flutter/material.dart';

@override
Widget buildTower() {
  return Container(
      height: 24,
      width: 30,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 3.23,
            height: 6.46,
            color: ColorConstant.lightPink3,
          ),
            const SizedBox(
            width: 2.98,
          ), Container(
            width: 3.23,
            height: 11.6,
            color: ColorConstant.lightPink3,
          ),const SizedBox(
            width: 2.98,
          ) ,Container(
            width: 3.23,
            height: 17.46,
            color: ColorConstant.lightPink2,
          ),const SizedBox(
            width: 2.98,
          ) ,Container(
            width: 3.23,
            height: 20.14,
            color: ColorConstant.lightPink2,
          ),const SizedBox(
            width: 2.98,
          ), Container(
            width: 3.23,
            height: 23.62,
            color: ColorConstant.lightPink2,
          )
        ],
      ));
}
