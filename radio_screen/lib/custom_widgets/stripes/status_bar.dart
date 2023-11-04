import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/gradient_text.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    super.key,
    required this.asset,
    required this.title,
    this.hp,
    required this.titleColor,
  });
  final String asset;
  final String title;
  final String? hp;
  final List<Color> titleColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          asset,
          height: AppConst.sdp(context, 66),
        ),
        Padding(
          padding: EdgeInsets.only(left: AppConst.sdp(context, 20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hp != null
                  ? GradientText(
                      text: title,
                      style: TextStyle(
                          fontFamily: "Norm",
                          fontSize: AppConst.sdp(context, 27),
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                            )
                          ]),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: titleColor,
                      ),
                    )
                  : const SizedBox.shrink(),
              hp != null
                  ? SvgPicture.asset(
                      hp!,
                      height: AppConst.sdp(context, 29),
                      width: AppConst.sdp(context, 256),
                    )
                  : GradientText(
                      text: title,
                      style: TextStyle(
                        fontFamily: "Norm",
                        fontSize: AppConst.sdp(context, 69),
                        fontWeight: FontWeight.w500,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: titleColor,
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
