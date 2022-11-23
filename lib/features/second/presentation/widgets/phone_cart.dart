import 'package:flutter/material.dart';

Widget phoneSlide(
  String pictures

) => Column(
      children: [
        const Padding(padding: EdgeInsets.all(15)),
        Container(
          height: 380,
          margin: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.7),
                spreadRadius: 4,
                blurRadius: 10,
                offset: const Offset(0, 1),
              ),
            ],
          ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  pictures,
                  fit: BoxFit.cover,
                  
                ),
            ),
        ),
      ],
    );
