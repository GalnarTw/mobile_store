import '../feature/presentation/wigets/сolors/my_colors.dart';
import 'package:flutter/material.dart';

class IconsCircle extends StatefulWidget {
  const IconsCircle({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<IconsCircle> createState() => _IconsCircleState();
}

class _IconsCircleState extends State<IconsCircle> {

  Color colortext1 = colorBlue;
  Color colortext2 = colorBlue;
  Color colortext3 = colorBlue;
  Color colortext4 = colorBlue;
  Color colortext5 = colorBlue;

  int counter1 = 5;
  int counter2 = 4;
  int counter3 = 4;
  int counter4 = 4;
  int counter5 = 4;
  int counterall = 5;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 27),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed:
                   counterall > counter1
                      ? () {
                          setState(() {
                            counter1++;
                            counter2 = 4;
                            counter3 = 4;
                            counter4 = 4;
                            counter5 = 4;
                            colortext1 = colorOrange;
                            colortext2 = colorBlue;
                            colortext3 = colorBlue;
                            colortext4 = colorBlue;
                            colortext5 = colorBlue;
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    disabledForegroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    disabledBackgroundColor: colorOrange,
                    minimumSize: const Size(71, 71),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(1000),
                    ),
                   
                  ),
                  child: const Icon(Icons.phone_android)),
              Text(
                'Phones',
                style: TextStyle(color: colortext1),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: counterall > counter2
                      ? () {
                          setState(() {
                            counter2++;
                            counter1 = 4;
                            counter3 = 4;
                            counter4 = 4;
                            counter5 = 4;
                            colortext2 = colorOrange;
                            colortext1 = colorBlue;
                            colortext3 = colorBlue;
                            colortext4 = colorBlue;
                            colortext5 = colorBlue;
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    disabledForegroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    disabledBackgroundColor: colorOrange,
                    minimumSize: const Size(71, 71),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                  child: const Icon(Icons.computer)),
              Text(
                'Computer',
                style: TextStyle(color: colortext2),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: counterall > counter3
                      ? () {
                          setState(() {
                            counter3++;
                            counter1 = 4;
                            counter2 = 4;
                            counter4 = 4;
                            counter5 = 4;
                            colortext3 = colorOrange;
                            colortext1 = colorBlue;
                            colortext2 = colorBlue;
                            colortext4 = colorBlue;
                            colortext5 = colorBlue;
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    disabledForegroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    disabledBackgroundColor: colorOrange,
                    minimumSize: const Size(71, 71),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                  child: const Icon(Icons.heart_broken_outlined)),
              Text(
                'Health',
                style: TextStyle(color: colortext3),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: counterall > counter4
                      ? () {
                          setState(() {
                            counter4++;

                            counter1 = 4;
                            counter2 = 4;
                            counter3 = 4;
                            counter5 = 4;
                            colortext4 = colorOrange;
                            colortext1 = colorBlue;
                            colortext3 = colorBlue;
                            colortext2 = colorBlue;
                            colortext5 = colorBlue;
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    disabledForegroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    disabledBackgroundColor: colorOrange,
                    minimumSize: const Size(71, 71),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                  child: const Icon(Icons.book_outlined)),
              Text(
                'Books',
                style: TextStyle(color: colortext4),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23, right: 27),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: counterall > counter5
                      ? () {
                          setState(() {
                            counter5++;
                            counter1 = 4;
                            counter2 = 4;
                            counter3 = 4;
                            counter4 = 4;
                            colortext5 = colorOrange;
                            colortext1 = colorBlue;
                            colortext3 = colorBlue;
                            colortext4 = colorBlue;
                            colortext2 = colorBlue;
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.grey,
                    disabledForegroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    disabledBackgroundColor: colorOrange,
                    minimumSize: const Size(71, 71),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                  child: const Icon(Icons.abc)),
              Text(
                'abc',
                style: TextStyle(
                  color: colortext5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
      




      
// Widget CircleIcons(
//     // Text text,
//     // Icon icon,
//   ) =>