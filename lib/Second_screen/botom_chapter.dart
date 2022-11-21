import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_store/feature/presentation/wigets/%D1%81olors/my_colors.dart';

class Chapter extends StatefulWidget {
  const Chapter({super.key});

  @override
  State<Chapter> createState() => _ChapterState();
}

class _ChapterState extends State<Chapter> {
  Color colorcont1 = colorOrange;
  Color colorcont2 = colorWhite;
  Color colorcont3 = colorWhite;

  Color colortext1 = colorBlue;
  Color colortext2 = colorGrey;
  Color colortext3 = colorGrey;

  int count1 = 2;
  int count2 = 1;
  int count3 = 1;

  int countall = 2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            TextButton(
              onPressed: 
              countall > count1
                  ? () {
                      setState(() {
                        count1++;
                        count2=1;
                        count3=1;
                        colortext1 = colorBlue;
                        colorcont1 = colorOrange;
                        colorcont2 = colorWhite;
                        colorcont3 = colorWhite;
                        colortext2 = colorGrey;
                        colortext3 = colorGrey;
                      });
                    }
                  : null,
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                  Size(20, 10),
                ),
              ),
              child: Text(
                'Shop',
                style: TextStyle(
                  color: colortext1,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              color: colorcont1,
              height: 3,
              width: 86,
            )
          ],
        ),
        Column(
          children: [
            TextButton(
              onPressed: countall > count2
                  ? () {
                      setState(() {
                        count2++;
                        count1=1;
                        count3=1;
                        colortext2 = colorBlue;
                        colorcont2 = colorOrange;
                        colorcont1 = colorWhite;
                        colorcont3 = colorWhite;
                        colortext1 = colorGrey;
                        colortext3 = colorGrey;
                      });
                    }
                  : null,
              child: Text(
                'Details',
                style: TextStyle(
                  color: colortext2,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              color: colorcont2,
              height: 3,
              width: 86,
            )
          ],
        ),
        Column(
          children: [
            TextButton(
              onPressed: countall > count3
                  ? () {
                      setState(() {
                        count3++;
                        count2=1;
                        count1=1;
                        colortext3 = colorBlue;
                        colorcont3 = colorOrange;
                        colorcont2 = colorWhite;
                        colorcont1 = colorWhite;
                        colortext2 = colorGrey;
                        colortext1 = colorGrey;
                      });
                    }
                  : null,
              child: Text(
                'Features',
                style: TextStyle(
                  color: colortext3,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              color: colorcont3,
              height: 3,
              width: 86,
            )
          ],
        ),
      ],
    );
  }
}
