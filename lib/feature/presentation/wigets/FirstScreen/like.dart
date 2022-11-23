// ignore_for_file: camel_case_types

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
      style: TextButton.styleFrom(
        minimumSize: const Size(35, 35),
        backgroundColor: colorWhite,
        foregroundColor: colorBlue,
        shape: RoundedRectangleBorder(
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
