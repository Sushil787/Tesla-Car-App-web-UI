import 'dart:js_util';

import 'package:apptesla/constants/constant.dart';
import 'package:apptesla/main.dart';
import 'package:apptesla/my_flutter_app_icons.dart';
import 'package:apptesla/widgets/semicircular_speed_indicator.dart';
import 'package:apptesla/widgets/tower_level.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FuelSpeed extends StatelessWidget {
  const FuelSpeed({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      width: 288,
      child: Column(children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const SemiCircleSpeedIndicator(),
            Positioned(
                top: 60,
                child: Text(
                  "150",
                  style: GoogleFonts.manrope(
                      fontSize: 60, fontWeight: FontWeight.w900),
                )),
            Positioned(
                top: 140,
                child: Text(
                  "mph",
                  style: GoogleFonts.manrope(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(38, 29, 32, 0.3)),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Fuel",
              style: GoogleFonts.manrope(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: ColorConstant.textBlack),
            ),
            buildTower(),
             Container(
              height: 31,
              width: 2.1,
              color: const Color.fromARGB(77, 123, 121, 121),
            ),
            Text("Auto",
                style: GoogleFonts.manrope(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.textBlack)),
               Icon(MyFlutterApp.steering_wheel,color: ColorConstant.lightPink3, ),
          ],
        ),
      ]),
    );
  }
}
