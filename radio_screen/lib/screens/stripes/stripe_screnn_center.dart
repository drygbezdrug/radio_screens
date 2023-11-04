import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/stripes/concave_button.dart';
import 'package:radio_screen/custom_widgets/stripes/status_bar.dart';

class StripeCenter extends StatelessWidget {
  const StripeCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StatusBar(
          asset: "assets/image/electro.svg",
          title: "Repaire Generator",
          hp: "assets/image/full_stripe_hp.svg",
          titleColor: AppConst().silverGradient,
        ),
        Padding(
          padding: EdgeInsets.only(top: AppConst.sdp(context, 12)),
          child: ConsaveButton(
              height: AppConst.sdp(context, 47),
              text: "Отмена",
              width: AppConst.sdp(context, 193)),
        ),
      ],
    );
  }
}
