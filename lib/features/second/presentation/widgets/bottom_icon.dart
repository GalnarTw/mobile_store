// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';

Widget bottomIcon(SvgPicture icons,String param) => SizedBox(width: 95,height: 95,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
        children: [const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
          
          icons,
          
          Text(param ,style: const TextStyle(fontSize: 15 ,color: colorIconGrey),),
          const Padding(padding: EdgeInsets.only(bottom: 1)),
          const Padding(padding: EdgeInsets.only(bottom: 1)),
        ],
      ),
    );
