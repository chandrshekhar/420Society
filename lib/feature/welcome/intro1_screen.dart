import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:four20society/constants/colors/app_colors.dart';
import 'package:four20society/constants/routes/routes_name.dart';
import 'package:four20society/global_widget/custom_button.dart';

class IntroOneScreen extends StatelessWidget {
  const IntroOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.network(
          "https://wallpapercave.com/wp/wp2490640.jpg",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Positioned(
            top: 80,
            left: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              children: [
                const Text(
                  "Meet Best Online",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                RichText(
                    text: const TextSpan(
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'Cannabis',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: ' Store',
                          style:
                              TextStyle(color: AppColors.app_bottombar_color))
                    ])),
                const Text("Highely calculated Cannabis Delivery")
              ],
            )),
        Positioned(
            left: MediaQuery.of(context).size.width * 0.2,
            bottom: 40,
            child: CustomElevatedButton(
              color: AppColors.buttonColor,
              onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                  context, AppRoute.intro2Screen, (route) => false);
              },
              title: "NEXT    >",
              width: 240,
            )),
      ],
    ));
  }
}