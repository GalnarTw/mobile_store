import 'package:flutter/material.dart';

// const icons = [
//   Icons.memory,
//   Icons.photo_camera,Icons.qr_code,Icons.wrong_location,
// Icons.sd_card_rounded
// ];
Widget bottomIcon(IconData icons,String param) => Container(width: 100,height: 100,
      child: Column(
        children: [Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Icon(
            // Icons.memory,
          icons,size: 28,color: Color.fromARGB(255, 117, 117, 117),
          ),
          Text(param,style: TextStyle(fontSize: 15 ,color: Color.fromARGB(255, 117, 117, 117)),),
        ],
      ),
    );
