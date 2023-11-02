// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/menu/menu.dart';

class RadioInterface extends StatelessWidget {
  const RadioInterface({super.key});

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
        child: Padding(
          padding: EdgeInsets.only(
            bottom: AppConst.sdp(context, 58),
            left: AppConst.sdp(context, 60),
          ),
          child:
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Center(child: StripeCenter()),
              //       ],
              //     ),
              //   ],
              // )
              const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Menu()],
              ),
            ],
          ),
        ),
        //  Align(alignment: Alignment.bottomLeft, child: MainButton())),
      ),
    );
  }
}
