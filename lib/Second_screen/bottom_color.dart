import 'package:flutter/material.dart';
import 'package:mobile_store/feature/presentation/wigets/%D1%81olors/my_colors.dart';

class CircleColor extends StatefulWidget {
  const CircleColor({super.key});

  @override
  State<CircleColor> createState() => _CircleColorState();
}

class _CircleColorState extends State<CircleColor> {
  Color coloricon = colorWhite;
  Color coloricon2 = colorBrown;

  int color1 = 2;
  int color2 = 1;

  int colorall = 2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:34.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: colorBlue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.done_rounded,
                  color: coloricon,
                  size: 25,
                ),
                onPressed: colorall > color1
                    ? () {
                        setState(() {
                          color1++;
                          color2 = 1;
                          coloricon = colorWhite;
                          coloricon2 = colorBrown;
                        });
                      }
                    : null,

                // Icons.memory,

                // icons,size: 28,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:19.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: colorBrown,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              icon: Icon(
                Icons.done_rounded,
                color: coloricon2,
                size: 25,
              ),
              onPressed: colorall > color2
                  ? () {
                      setState(() {
                        color2++;
                        color1 = 1;
                        coloricon = colorBlue;
                        coloricon2 = colorWhite;
                      });
                    }
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
