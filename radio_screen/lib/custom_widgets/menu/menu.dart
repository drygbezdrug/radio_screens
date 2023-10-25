import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radio_screen/const.dart';
import 'package:radio_screen/custom_widgets/menu/main_button.dart';
import 'package:radio_screen/custom_widgets/menu/volume_menu.dart';
import 'package:radio_screen/custom_widgets/menu/song_container.dart';
import 'package:radio_screen/custom_widgets/slide.dart';
import 'package:radio_screen/screens/cubit/menu/menu_cubit.dart';
import 'package:radio_screen/screens/cubit/menu/menu_state.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        print("rap");
        setState(() {
          expand = !expand;
        });
      },
      child: BlocBuilder<MenuCubit, MenuState>(
        builder: (context, state) {
          return Container(
            // width: expand ? AppConst.sdp(context, 985) : AppConst.sdp(context, 984),
            // height:
            //     expand ? AppConst.sdp(context, 853) : AppConst.sdp(context, 454),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [Color(0xf2482574), Color(0xe508010f)],
              ),
            ),
            child: state is SearchMenu
                ? Padding(
                    padding: EdgeInsets.only(
                      left: AppConst.sdp(context, 33),
                      right: AppConst.sdp(context, 20),
                      top: AppConst.sdp(context, 22),
                      bottom: AppConst.sdp(context, 29),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: AppConst.sdp(context, 5),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  context.read<MenuCubit>().expand();
                                },
                                child: SvgPicture.asset(
                                  "assets/image/search.svg",
                                  height: AppConst.sdp(context, 82),
                                ),
                              ),
                            ),
                            Center(
                              child: SizedBox(
                                  width: AppConst.sdp(context, 380),
                                  child: const TextField(
                                    autofocus: true,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  )),
                            ),
                            MainButton(
                              color: AppConst().redButton,
                              text: 'Закрыть',
                              width: 286,
                              changeGredient: true,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100,
                          width: 300,
                          child: Slide(
                            child: SongContainer(
                              color: AppConst().purpleButton,
                              text: 'Baby Type',
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: expand,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: AppConst.sdp(context, 33),
                            left: AppConst.sdp(context, 34),
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.read<MenuCubit>().search();
                                },
                                child: SvgPicture.asset(
                                  "assets/image/music.svg",
                                  width: AppConst.sdp(context, 82),
                                  height: AppConst.sdp(context, 82),
                                ),
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
                          Padding(
                            padding: EdgeInsets.all(
                              AppConst.sdp(context, 34),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MainButton(
                                    color: AppConst().purpleButton,
                                    text: 'Радио',
                                    width: 541,
                                    changeGredient: false,
                                  ),
                                  SizedBox(
                                    height: AppConst.sdp(context, 34),
                                  ),
                                  MainButton(
                                    color: AppConst().purpleButton,
                                    text: 'Установить мелодию',
                                    width: 541,
                                    changeGredient: false,
                                  ),
                                  SizedBox(
                                    height: AppConst.sdp(context, 34),
                                  ),
                                  /////////
                                  Visibility(
                                    visible: expand,
                                    child: Column(
                                      children: [
                                        MainButton(
                                          color: AppConst().purpleButton,
                                          text: 'Взять в руки',
                                          width: 541,
                                          changeGredient: false,
                                        ),
                                        SizedBox(
                                          height: AppConst.sdp(context, 34),
                                        ),
                                        MainButton(
                                          color: AppConst().purpleButton,
                                          text: 'Убрать в инвентарь',
                                          width: 541,
                                          changeGredient: false,
                                        ),
                                        SizedBox(
                                          height: AppConst.sdp(context, 34),
                                        ),
                                      ],
                                    ),
                                  ),
                                  /////////
                                  MainButton(
                                    color: AppConst().redButton,
                                    text: 'Закрыть',
                                    width: 541,
                                    changeGredient: true,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          VolumeMenu(
                            expand: expand,
                          ),
                        ],
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}
