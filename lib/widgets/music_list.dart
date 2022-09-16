import 'dart:html';
import 'dart:math';

import 'package:apptesla/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 420,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 26, right: 20, top: 20, bottom: 23),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorConstant.lightPink1,
                      child: Icon(
                        Icons.arrow_forward,
                        color: ColorConstant.lightPink3,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Up Next",
                      style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Text(
                "Seemore",
                style: GoogleFonts.manrope(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.lightPink3),
              ),
            ],
          ),
          Card(
            margin: EdgeInsets.only(top: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: ColorConstant.lightPink1,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 7, bottom: 7),
              child: ListTile(
                title: Text(
                  "I am not afraid",
                  style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorConstant.lightPink3),
                ),
                subtitle: Text(
                  "Eminem",
                  style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: ColorConstant.lightPink2),
                ),
                leading: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.play_arrow,
                    color: ColorConstant.lightPink2,
                    size: 35,
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 7, bottom: 7),
              child: ListTile(
                title: Text(
                  "Hare Krishna Hare Ram",
                  style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorConstant.textBlack),
                ),
                subtitle: Text(
                  "Madhavas",
                  style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: ColorConstant.textBlack),
                ),
                leading: const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
