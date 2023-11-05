import 'package:flutter/material.dart';
import 'package:radio_screen/const.dart';

class HollowButton extends StatelessWidget {
  const HollowButton({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: AppConst.sdp(context, 193),
        height: AppConst.sdp(context, 47),
        decoration: BoxDecoration(
          color: const Color(0xff121212).withOpacity(0.65),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.symmetric(
          vertical: AppConst.sdp(context, 5),
          horizontal: AppConst.sdp(context, 8),
        ),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Color(0xff8f8f8f), Color(0x00252525)],
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppConst.sdp(context, 22),
              fontFamily: 'Norm',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
