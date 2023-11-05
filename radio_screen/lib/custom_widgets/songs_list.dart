import 'package:flutter/material.dart';
import 'package:radio_screen/ui/radio/widgets/button_animator.dart';
import 'package:radio_screen/const.dart';

class SongsList extends StatelessWidget {
  const SongsList({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return RawScrollbar(
      controller: scrollController,
      thumbVisibility: true,
      trackVisibility: true,
      thickness: AppConst.sdp(context, 19),
      radius: Radius.circular(AppConst.sdp(context, 5)),
      trackRadius: Radius.circular(AppConst.sdp(context, 5)),
      trackColor: const Color(0xff230945).withOpacity(0.50),
      thumbColor: const Color(0xff904BE9),
      child: ListView.separated(
        controller: scrollController,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: AppConst.sdp(context, 60)),
            child: ButtonAnimator(
              childWidget: Container(
                height: AppConst.sdp(context, 81),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppConst.sdp(context, 10)),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: AppConst().purpleButton,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: AppConst.sdp(context, 70),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Baby TAPE',
                      style: TextStyle(
                        fontFamily: 'Akrobat',
                        fontSize: AppConst.sdp(context, 40),
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: AppConst.sdp(context, 20),
          );
        },
      ),
    );
  }
}
