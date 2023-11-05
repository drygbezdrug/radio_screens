import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_screen/cubit/volume_cubit.dart';
import 'package:radio_screen/cubit/volume_state.dart';
import 'package:radio_screen/ui/radio_menu/widgets/button_animator.dart';
import 'package:radio_screen/const.dart';

class VolumePanel extends StatefulWidget {
  const VolumePanel({super.key});
  @override
  State<VolumePanel> createState() => _VolumePanelState();
}

class _VolumePanelState extends State<VolumePanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.sdp(context, 700),
      width: AppConst.sdp(context, 367),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConst.sdp(context, 10)),
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            const Color(0xFF7032C0).withOpacity(0.39),
            const Color(0xFF843AE3).withOpacity(0.22),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonAnimator(
            childWidget: BlocBuilder<VolumeCubit, VolumeState>(
              builder: (context, state) {
                return SizedBox(
                  width: AppConst.sdp(context, 289),
                  height: AppConst.sdp(context, 106),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<VolumeCubit>().increase();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AppConst.sdp(context, 10)),
                      ),
                      backgroundColor: const Color(0x7f9eff51),
                      side: BorderSide(
                        color: const Color(0xff9EFF52).withOpacity(0.5),
                        width: AppConst.sdp(context, 2),
                      ),
                    ),
                    child: SvgPicture.asset(
                      "assets/image/+.svg",
                      width: AppConst.sdp(context, 47),
                      height: AppConst.sdp(context, 47),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: AppConst.sdp(context, 34),
          ),
          ButtonAnimator(
            childWidget: SizedBox(
              width: AppConst.sdp(context, 289),
              height: AppConst.sdp(context, 106),
              child: BlocBuilder<VolumeCubit, VolumeState>(
                builder: (context, state) {
                  return ElevatedButton(
                    onPressed: () {
                      context.read<VolumeCubit>().decrease();
                    },
                    onLongPress: () {
                      context.read<VolumeCubit>().decrease();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AppConst.sdp(context, 10)),
                      ),
                      backgroundColor: const Color(0xFFFF5252).withOpacity(0.5),
                      side: BorderSide(
                        color: Color(0xFFFF5252).withOpacity(0.6),
                        width: AppConst.sdp(context, 2),
                      ),
                    ),
                    child: SvgPicture.asset(
                      "assets/image/-.svg",
                      width: AppConst.sdp(context, 20),
                      height: AppConst.sdp(context, 13),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: AppConst.sdp(context, 34),
          ),
          BlocBuilder<VolumeCubit, VolumeState>(
            builder: (context, state) {
              return Container(
                width: AppConst.sdp(context, 289),
                height: AppConst.sdp(context, 106),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppConst.sdp(context, 10)),
                  color: const Color(0xFF6B33B1).withOpacity(0.51),
                ),
                child: Row(
                  children: [
                    Container(
                      width: AppConst.sdp(context, 106),
                      height: AppConst.sdp(context, 106),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppConst.sdp(context, 10)),
                        color: const Color(0x826b32b1),
                      ),
                      child: Center(
                        child: Text(
                          "${state.volume}%",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: AppConst.sdp(context, 28),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppConst.sdp(context, 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<VolumeCubit>().mute();
                      },
                      child: Row(
                        children: [
                          state.isMute
                              ? SvgPicture.asset(
                                  "assets/image/bx.svg",
                                  height: AppConst.sdp(context, 69),
                                )
                              : SvgPicture.asset(
                                  "assets/image/bx_green.svg",
                                  height: AppConst.sdp(context, 69),
                                ),
                          SizedBox(
                            width: AppConst.sdp(context, 17),
                          ),
                          state.isMute
                              ? Text(
                                  "Выкл.",
                                  style: TextStyle(
                                    fontSize: AppConst.sdp(context, 28),
                                    color: const Color(0xffFF5252),
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              : Text(
                                  "Вкл.",
                                  style: TextStyle(
                                    fontSize: AppConst.sdp(context, 28),
                                    color: const Color(0xff9EFF52),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
