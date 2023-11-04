import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/stripes/status_bar.dart';

class StripeScreen extends StatelessWidget {
  const StripeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StatusBar(
          asset: "assets/image/full_heart.svg",
          title: "Maks Maks",
          hp: "assets/image/full_stripe_hp.svg",
          titleColor: AppConst().silverGradient,
        ),
        SizedBox(
          height: AppConst.sdp(context, 10),
        ),
        StatusBar(
          asset: "assets/image/kv1.svg",
          title: "Maks Maks",
          hp: "assets/image/full_stripe_hp.svg",
          titleColor: AppConst().silverGradient,
        ),
        SizedBox(
          height: AppConst.sdp(context, 10),
        ),
        StatusBar(
          asset: "assets/image/kv4.svg",
          title: "Maks Maks",
          hp: "assets/image/full_stripe_hp.svg",
          titleColor: AppConst().silverGradient,
        ),
        SizedBox(
          height: AppConst.sdp(context, 10),
        ),
        StatusBar(
          asset: "assets/image/kv3.svg",
          title: "Maks Maks",
          hp: "assets/image/full_stripe_hp.svg",
          titleColor: AppConst().redGradient,
        ),
        StatusBar(
          asset: "assets/image/kv2.svg",
          title: "4",
          titleColor: AppConst().silverGradient,
        ),
      ],
    );
  }
}
