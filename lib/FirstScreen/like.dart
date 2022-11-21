import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_store/feature/presentation/wigets/%D1%81olors/my_colors.dart';

class like extends StatefulWidget {
  const like({super.key});

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  IconData iconhearth = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: 5 > 4
          ? () {
              setState(() {
                iconhearth = Icons.favorite;
              });
            }
          : null,
      // statesController: MaterialStatesController(i=true),
      style: TextButton.styleFrom(
        minimumSize: Size(35, 35),
        backgroundColor: colorWhite,
        foregroundColor: colorBlue,
        shape: RoundedRectangleBorder(
          // side:BorderSide(color: Colors.black,width: 0.5,style:BorderStyle.solid,strokeAlign: StrokeAlign.center),

          borderRadius: BorderRadius.circular(1110),
        ),
      ),

      child: Icon(
        iconhearth,
        color: colorOrange,
      ),
    );
  }
}
