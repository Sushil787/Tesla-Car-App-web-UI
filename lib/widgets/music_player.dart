import 'package:apptesla/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 249,
      width: 1000,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 18, right: 37, left: 40, bottom: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  //for battery time and bell
                  width: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        //60% battery
                        height: 19,
                        width: 50.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: ColorConstant.lightPink1, width: 1.5)),
                        child: Row(
                          children: [
                            Container(
                                width: 27.0,
                                decoration: BoxDecoration(
                                  // color: ColorConstant.lightPink2,
                                  color: ColorConstant.lightPink3,
                                  borderRadius: BorderRadius.circular(5),
                                )),
                            Expanded(
                                child: Container(
                              color: Colors.white,
                            )),
                          ],
                        ),
                      ),
                      Text("60%",
                          style: GoogleFonts.manrope(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorConstant.textBlack)),
                      Text("10/07 | 7:32 am",
                          style: GoogleFonts.manrope(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorConstant.textBlack)),
                      SizedBox(
                        //notification bell
                        width: 30,
                        height: 30,
                        child: Stack(
                          children: [
                            Icon(
                              Icons.notifications,
                              color: ColorConstant.lightPink3,
                              size: 30,
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              alignment: Alignment.topRight,
                              margin: const EdgeInsets.only(top: 5),
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorConstant.lightPink1,
                                ),
                                child: const Center(
                                  child: Text(
                                    "4",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 480,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('Assets/Images/boy.png'))),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hey",
                                  style: GoogleFonts.manrope(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConstant.textBlack),
                                ),
                                Text(
                                  "Sushil",
                                  style: GoogleFonts.manrope(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: ColorConstant.textBlack),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.cloud,
                              size: 40,
                              color: ColorConstant.lightPink2,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: '39',
                                  style: GoogleFonts.manrope(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' °C',
                                      style: GoogleFonts.manrope(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: ColorConstant.lightPink3),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "Partly Cloudy",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 100, 99, 99)),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  //Search Find your destination
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: ColorConstant.lightPink1),
                      height: 64,
                      width: 480,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.search,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Search Your Destination",
                                style: GoogleFonts.manrope(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: ColorConstant.textBlack)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            //Right side music player
            Container(
              width: 265,
              height: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    //Eminem Love your self
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('Assets/Images/boy.png'))),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 70,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Eminem",
                              style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: ColorConstant.textBlack),
                            ),
                            Text(
                              "Lose Your Self",
                              style: GoogleFonts.manrope(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: ColorConstant.textBlack),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('2:15'),
                      const SizedBox(
                        width: 7,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 78,
                            color: ColorConstant.lightPink3,
                          ),
                          Container(
                            height: 5,
                            width: 70,
                            color: ColorConstant.lightPink1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        '4:20',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    
                    width: 220,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          decoration: BoxDecoration(
                              color: ColorConstant.lightPink1,
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                        
                          padding: EdgeInsets.all(6),
                          child: Icon(Icons.shuffle_sharp,size: 24,color: ColorConstant.lightPink3,)),
                        Icon(Icons.skip_previous_outlined,size: 31,color: ColorConstant.lightPink3,),
                        Icon(Icons.play_arrow,size: 31,color: ColorConstant.lightPink3,),
                        Icon(Icons.skip_next_outlined,size: 31,color: ColorConstant.lightPink3,),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorConstant.lightPink1,
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                        
                          padding: EdgeInsets.all(6),
                          child: Icon(Icons.replay,size: 24,color: ColorConstant.lightPink3,)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
