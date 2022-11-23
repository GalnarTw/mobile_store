// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:mobile_store/feature/presentation/widgets/%D1%81olors/my_colors.dart';

Widget StarIcons() => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const[
         Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.star_rate,
            size: 18,
            color: colorStar,
          ),
        )
      ],
    );
