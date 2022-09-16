import 'package:apptesla/Provider/Increament_decreament_provider.dart';
import 'package:apptesla/constants/constant.dart';
import 'package:apptesla/my_flutter_app_icons.dart';
import 'package:apptesla/widgets/music_list.dart';
import 'package:apptesla/widgets/music_player.dart';
import 'package:flutter/material.dart';
import 'package:apptesla/widgets/fuel_speed_indicator.dart';
import 'package:apptesla/widgets/map_add_sub.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/square_icon_button.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => NumberChange())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstant.lightPink0,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final icon = <IconData>[
    Icons.phone,
    Icons.location_on,
    Icons.volume_up_rounded,
    Icons.photo,
    Icons.play_circle,
    Icons.settings
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.only(
                left: 70.0, right: 68, top: 60, bottom: 67),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const FuelSpeed(),
                    SizedBox(
                        height: 310.0,
                        width: 330,
                        child: Image.asset('Assets/Images/car.png')),
                    const MapAndAddSub(),
                    const SizedBox(
                      width: 40,
                    ),
                    Column(
                      //This is from Icon and auto manual button
                      children: [
                        Container(
                          margin: const EdgeInsets.all(30),
                          height: 278,
                          width: 418,
                          child: GridView.builder(
                              itemCount: 6,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 15,
                                      crossAxisSpacing: 15),
                              itemBuilder: (BuildContext context, int index) {
                                return SquareIconButton(
                                  iconData: icon[index],
                                );
                              }),
                        ),
                        Stack(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: ColorConstant.lightPink1,
                                    borderRadius: BorderRadius.circular(20)),
                                height: 102,
                                width: 418,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0,
                                        right: 25,
                                        top: 20,
                                        bottom: 20),
                                    child: Text("Manual",
                                        style: GoogleFonts.manrope(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                            color: ColorConstant.lightPink3)),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 80,
                                width: 221,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    color: ColorConstant.lightPink3),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 60),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Icon(
                                          MyFlutterApp.steering_wheel,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                        Text("Auto",
                                            style: GoogleFonts.manrope(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white)),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      MusicPlayer(),
                      MusicList(),
                    ],
                  ),
                ),
              ],
            )));
  }
}
