import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/ui/radio/widgets/songs_list.dart';
import 'package:radio_screen/ui/radio/widgets/main_button.dart';
import 'package:radio_screen/ui/radio/widgets/volume_panel.dart';

enum RadioMenuType { main, radio, search }

class RadioMenu extends StatefulWidget {
  const RadioMenu({super.key});

  @override
  State<RadioMenu> createState() => _RadioMenuState();
}

class _RadioMenuState extends State<RadioMenu> {
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
                          onTap: () {
                            setState(() {
                              radioMenuType = RadioMenuType.search;
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
                const VolumePanel(),
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
                              onTap: () {
                                setState(() {
                                  radioMenuType = RadioMenuType.search;
                                });
                              },
                            ),
                            SizedBox(height: AppConst.sdp(context, 34)),
                            MainButton(
                              color: AppConst().purpleButton,
                              text: 'Взять в руки',
                              changeGradient: false,
                            ),
                            SizedBox(height: AppConst.sdp(context, 34)),
                            MainButton(
                              color: AppConst().purpleButton,
                              text: 'Убрать в инвентарь',
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
                    const VolumePanel(),
                  ],
                ),
              ],
            ),
          ),
        );

      case RadioMenuType.search:
        radioMenu = Padding(
          padding: EdgeInsets.only(
            bottom: AppConst.sdp(context, 53),
            left: AppConst.sdp(context, 50),
          ),
          child: Container(
            height: AppConst.sdp(context, 566),
            width: AppConst.sdp(context, 1010),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: AppConst.sdp(context, 38),
                        bottom: AppConst.sdp(context, 5),
                        left: AppConst.sdp(context, 37),
                        right: AppConst.sdp(context, 12),
                      ),
                      child: SvgPicture.asset(
                        "assets/image/search.svg",
                        height: AppConst.sdp(context, 82),
                      ),
                    ),
                    SizedBox(
                      width: AppConst.sdp(context, 590),
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: AppConst.sdp(context, 15)),
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Введите название песни',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: AppConst.sdp(context, 40),
                            ),
                          ),
                          autofocus: true,
                          style: const TextStyle(
                            fontFamily: "Akrobat",
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: AppConst.sdp(context, 22),
                          right: AppConst.sdp(context, 20),
                        ),
                        child: MainButton(
                          color: AppConst().redButton,
                          text: 'Закрыть',
                          changeGradient: true,
                          onTap: () {
                            setState(() {
                              radioMenuType = RadioMenuType.main;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: AppConst.sdp(context, 25)),
                  child: SizedBox(
                    height: AppConst.sdp(context, 400),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: AppConst.sdp(context, 25),
                        bottom: AppConst.sdp(context, 20),
                        right: AppConst.sdp(context, 20),
                      ),
                      child: const SongsList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
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
