// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/screens/widgets/status_bar.dart';

class GroupStatusBar extends StatelessWidget {
  const GroupStatusBar({super.key});

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
        child: Stack(
          children: [
            Positioned(
              left: AppConst.sdp(context, 44),
              bottom: AppConst.sdp(context, 42),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StatusBar(
                    asset: "assets/image/full_heart.svg",
                    title: "Maks Maks",
                    titleColor: AppConst().silverGradient,
                    barWidth: AppConst.sdp(context, 240),
                  ),
                  SizedBox(
                    height: AppConst.sdp(context, 10),
                  ),
                  StatusBar(
                    asset: "assets/image/kv1.svg",
                    title: "Maks Makssssss",
                    titleColor: AppConst().silverGradient,
                    barWidth: AppConst.sdp(context, 180),
                  ),
                  SizedBox(
                    height: AppConst.sdp(context, 10),
                  ),
                  StatusBar(
                    asset: "assets/image/kv4.svg",
                    title: "Maks Maks",
                    titleColor: AppConst().silverGradient,
                    barWidth: AppConst.sdp(context, 120),
                  ),
                  SizedBox(
                    height: AppConst.sdp(context, 10),
                  ),
                  StatusBar(
                    asset: "assets/image/kv3.svg",
                    title: "Maks Maks",
                    color: Color(0xFFD80707),
                    titleColor: AppConst().redGradient,
                    barWidth: AppConst.sdp(context, 60),
                  ),
                  StatusBar(
                    asset: "assets/image/kv2.svg",
                    title: "4",
                    titleColor: AppConst().silverGradient,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
