import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget StarIcons() => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            Icons.star_rate,
            size: 18,
            color: Color.fromARGB(255, 241, 185, 0),
          ),
        )
        // TextButton(
        //     onPressed:(){},

        //     style: ButtonStyle(
        //       minimumSize: MaterialStateProperty.all(
        //         const Size(0, 0),
        //       ),
        //       // backgroundColor: MaterialStateProperty.all(
        //       //     const Color.fromARGB(255, 255, 77, 0)),
        //       foregroundColor: MaterialStateProperty.all(
        // Color.fromARGB(255, 241, 185, 0),

        //           ),
        //       overlayColor: MaterialStateProperty.all(
        // const Color.fromARGB(255, 97, 97, 97)),

        //       shape: MaterialStateProperty.all(
        //         RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(1110)),
        //       ),
        //     ),
        //     child: Icon(Icons.star_rate,size: 18,)),
      ],
    );
