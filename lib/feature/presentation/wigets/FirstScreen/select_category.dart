// ignore_for_file: non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_store/feature/presentation/wigets/%D1%81olors/my_colors.dart';

class IconsCircle extends StatefulWidget {
  const IconsCircle({Key? key}) : super(key: key);

  @override
  State<IconsCircle> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<IconsCircle> {
  final icon = [
    'lib/assets/pictures/main_page/iPhone.svg',
    'lib/assets/pictures/main_page/computer.svg',
    'lib/assets/pictures/main_page/heart.svg',
    'lib/assets/pictures/main_page/book.svg',
    'lib/assets/pictures/second_page/ok.svg',
  ];
  int value = 0;
  @override
  Widget build(BuildContext context) {
    final text = [
      'Phones',
      'Computer',
      'Hearth',
      'Books',
      'ok',
    ];
    return Column(
      children: [
        const SizedBox(height: 20),
        FittedBox(
          child: Wrap(
            spacing: 0,
            children: List.generate(5, (int index) {
              return Padding(
                padding: const EdgeInsets.only(left:24.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ChoiceChip(
                        backgroundColor: Colors.white,
                        selectedColor: colorOrange,
                        labelPadding: const EdgeInsets.all(18),
                        label: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          height: 30,
                          width: 30,
                          child: value == index
                              ? SuperIcon(
                                  icon[index],
                                  Colors.white,
                                )
                              : SuperIcon(icon[index], Colors.grey),
                        ),
                        selected: value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            value = index;
                          });
                        }),
                        const SizedBox(height: 7,),
                    Text(
                      text[index],
                      style: TextStyle(
                          color: value == index ? colorOrange : colorBlue,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

Widget SuperIcon(
  String pictur,
  Color color,
) {
  return SvgPicture.asset(
    '$pictur',
    color: color,
  );
}

