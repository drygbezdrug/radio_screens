// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/widgets/hollow_button.dart';
import 'package:radio_screen/screens/widgets/status_bar.dart';

class CenterStatusBar extends StatelessWidget {
  const CenterStatusBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/back.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StatusBar(
                  asset: "assets/image/electro.svg",
                  title: "Repair Generator",
                  color: Colors.white,
                  barWidth: AppConst.sdp(context, 180),
                  progressBorders: "assets/image/full_stripe_hp.svg",
                  titleColor: AppConst().silverGradient,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: AppConst.sdp(context, 12),
                    left: AppConst.sdp(context, 85),
                  ),
                  child: HollowButton(
                    text: "Отменить",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
