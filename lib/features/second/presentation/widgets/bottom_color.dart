import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';

class CircleColor extends StatefulWidget {
  const CircleColor({super.key});

  @override
  State<CircleColor> createState() => _CircleColorState();
}
class _CircleColorState extends State<CircleColor> {
  Color coloricon = colorWhite;
  Color coloricon2 = colorBrown;
  int count = 2;
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
                icon: SvgPicture.asset(
                            'lib/assets/pictures/second_page/ok.svg',color: coloricon,),
                onPressed: count==1
                    ? () {
                        setState(() {
                          count=2;
                          coloricon = colorWhite;
                          coloricon2 = colorBrown;
                        });
                      }
                    : null,
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
              icon: SvgPicture.asset(
                            'lib/assets/pictures/second_page/ok.svg',color: coloricon2,),
              onPressed: count==2
                  ? () {
                      setState(() {
                        count=1;
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
