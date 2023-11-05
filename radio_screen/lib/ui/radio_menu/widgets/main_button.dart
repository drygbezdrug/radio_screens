import 'package:flutter/material.dart';
import 'package:radio_screen/ui/radio_menu/widgets/button_animator.dart';
import 'package:radio_screen/const.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.color,
    required this.text,
    this.onTap,
    this.width,
  });

  final List<Color> color;
  final String text;
  final void Function()? onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ButtonAnimator(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: AppConst.sdp(context, 106),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConst.sdp(context, 10)),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: color,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: AppConst.sdp(context, 70)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: "Akrobat",
                  fontSize: AppConst.sdp(context, 40),
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
