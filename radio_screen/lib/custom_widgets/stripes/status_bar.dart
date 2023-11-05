import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/stripes/custom_progress_bar.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    super.key,
    required this.asset,
    required this.title,
    required this.titleColor,
    required this.color,
    this.progressBorders,
    this.barWidth,
  });

  final String asset;
  final String title;
  final Color color;
  final List<Color> titleColor;
  final String? progressBorders;
  final double? barWidth;

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
          child: barWidth != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontFamily: "Norm",
                            fontSize: AppConst.sdp(context, 27),
                            fontWeight: FontWeight.w700,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.25),
                                offset: Offset(0, AppConst.sdp(context, 4)),
                                blurRadius: AppConst.sdp(context, 4),
                              ),
                            ],
                          ),
                        ),
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds) => LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: titleColor,
                          ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          ),
                          child: Text(
                            title,
                            style: TextStyle(
                              fontFamily: "Norm",
                              fontSize: AppConst.sdp(context, 27),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Positioned(
                          left: AppConst.sdp(context, 8),
                          child: CustomPaint(
                            size: Size(
                              barWidth ?? 0,
                              AppConst.sdp(context, 15),
                            ),
                            painter: CustomProgressBar(color: color),
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/image/progress_borders.svg",
                          width: AppConst.sdp(context, 256),
                          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                        ),
                      ],
                    ),
                  ],
                )
              : ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: titleColor,
                  ).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Norm",
                      fontSize: AppConst.sdp(context, 69),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
