import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/menu/main_button.dart';
import 'package:radio_screen/custom_widgets/menu/volume_panel.dart';

enum RadioMenuType { main, radio, search }

class RadioMenu extends StatefulWidget {
  const RadioMenu({super.key});

  @override
  State<RadioMenu> createState() => _RadioMenuState();
}

class _RadioMenuState extends State<RadioMenu> {
  bool expand = false;
  Widget? radioMenu;
  RadioMenuType radioMenuType = RadioMenuType.main;

  @override
  Widget build(BuildContext context) {
    switch (radioMenuType) {
      case RadioMenuType.main:
        radioMenu = Padding(
          padding: EdgeInsets.only(
            bottom: AppConst.sdp(context, 58),
            left: AppConst.sdp(context, 60),
          ),
          child: Container(
            height: AppConst.sdp(context, 454),
            width: AppConst.sdp(context, 984),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  const Color(0xff482575).withOpacity(0.95),
                  const Color(0xff080210).withOpacity(0.9),
                ],
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: AppConst.sdp(context, 34),
                      bottom: AppConst.sdp(context, 34),
                      left: AppConst.sdp(context, 33),
                      right: AppConst.sdp(context, 43),
                    ),
                    child: Column(
                      children: [
                        MainButton(
                          color: AppConst().purpleButton,
                          text: 'Радио',
                          changeGradient: false,
                          onTap: () {
                            setState(() {
                              radioMenuType = RadioMenuType.radio;
                            });
                          },
                        ),
                        SizedBox(height: AppConst.sdp(context, 34)),
                        MainButton(
                          color: AppConst().purpleButton,
                          text: 'Установить мелодию',
                          changeGradient: false,
                        ),
                        SizedBox(height: AppConst.sdp(context, 34)),
                        MainButton(
                          color: AppConst().redButton,
                          text: 'Закрыть',
                          changeGradient: true,
                          onTap: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                  ),
                ),
                const VolumePanel()
              ],
            ),
          ),
        );
      case RadioMenuType.radio:
        radioMenu = Padding(
          padding: EdgeInsets.only(
            bottom: AppConst.sdp(context, 58),
            left: AppConst.sdp(context, 60),
          ),
          child: Container(
            height: AppConst.sdp(context, 853),
            width: AppConst.sdp(context, 984),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  const Color(0xff482575).withOpacity(0.95),
                  const Color(0xff080210).withOpacity(0.9),
                ],
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: AppConst.sdp(context, 34),
                      left: AppConst.sdp(context, 33),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/image/music.svg",
                          width: AppConst.sdp(context, 82),
                          height: AppConst.sdp(context, 82),
                        ),
                        SizedBox(
                          width: AppConst.sdp(context, 10),
                        ),
                        Text(
                          "Сейчас играет: Моргенштерн",
                          style: TextStyle(
                            fontFamily: "Akrobat",
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: AppConst.sdp(context, 40),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: AppConst.sdp(context, 34),
                          bottom: AppConst.sdp(context, 34),
                          left: AppConst.sdp(context, 33),
                          right: AppConst.sdp(context, 43),
                        ),
                        child: Column(
                          children: [
                            MainButton(
                              color: AppConst().purpleButton,
                              text: 'Радио',
                              changeGradient: false,
                              onTap: () {
                                setState(() {
                                  radioMenuType = RadioMenuType.main;
                                });
                              },
                            ),
                            SizedBox(height: AppConst.sdp(context, 34)),
                            MainButton(
                              color: AppConst().purpleButton,
                              text: 'Установить мелодию',
                              changeGradient: false,
                            ),
                            SizedBox(height: AppConst.sdp(context, 34)),
                            MainButton(
                              color: AppConst().purpleButton,
                              text: 'Взять в руки',
                              changeGradient: false,
                              onTap: () {
                                setState(() {
                                  radioMenuType = RadioMenuType.radio;
                                });
                              },
                            ),
                            SizedBox(height: AppConst.sdp(context, 34)),
                            MainButton(
                              color: AppConst().purpleButton,
                              text: 'Убрать в инвентарь',
                              changeGradient: false,
                              onTap: () {
                                setState(() {
                                  radioMenuType = RadioMenuType.radio;
                                });
                              },
                            ),
                            SizedBox(height: AppConst.sdp(context, 34)),
                            MainButton(
                              color: AppConst().redButton,
                              text: 'Закрыть',
                              changeGradient: true,
                              onTap: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    VolumePanel()
                  ],
                ),
              ],
            ),
          ),
        );
      case RadioMenuType.search:
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.bottomLeft,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: radioMenu,
        ),
      ),
    );
  }
}
