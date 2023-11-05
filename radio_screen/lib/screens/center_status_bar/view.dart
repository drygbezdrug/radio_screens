// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/stripes/hollow_button.dart';
import 'package:radio_screen/custom_widgets/stripes/status_bar.dart';

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
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StatusBar(
          asset: "assets/image/electro.svg",
          title: "Repaire Generator",
          color: Colors.white,
          progressBorders: "assets/image/full_stripe_hp.svg",
          titleColor: AppConst().silverGradient,
        ),
        Padding(
          padding: EdgeInsets.only(top: AppConst.sdp(context, 12)),
          child: HollowButton(
            height: AppConst.sdp(context, 47),
            text: "Отмена",
            width: AppConst.sdp(context, 193),
          ),
        ),
      ],
    ),
      ),
    );
  }
}
