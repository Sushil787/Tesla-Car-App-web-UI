import 'package:apptesla/constants/constant.dart';
import 'package:flutter/material.dart';

class MapAndAddSub extends StatelessWidget {
  const MapAndAddSub({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Stack(
          children: [
            SizedBox(
              height: 383,
              width: 312,
              child: Image.asset('Assets/Images/map.jpg',
                  height: 383, fit: BoxFit.contain),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.zoom_out_map_sharp,
                    color: ColorConstant.lightPink3,
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 13.5,
        ),

        //for add and sub and map button
        SizedBox(
          width: 312,
          child: Row(children: [
            Container(
              width: 91,
              height: 43,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.remove,
                      size: 20,
                      color: ColorConstant.lightPink3,
                    ),
                    Icon(
                      Icons.add,
                      size: 20,
                      color: ColorConstant.lightPink3,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 145,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: Icon(
                Icons.map_outlined,
                color: ColorConstant.lightPink3,
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
