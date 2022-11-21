// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// ignore_for_file: non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:http/http.dart';
// import 'dart:html';
import '../Second_screen/gdgsdf.dart';

Widget Iphone12(
  String pghCart,
  int index,
  String NamePhone,
  // Text info,
) =>
    Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.all(10),
      height: 250,
      width: 600,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(color: Colors.black,
            image: DecorationImage(
              image: NetworkImage(
                pghCart,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 0,
                width: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
                  Container(
                    transformAlignment: Alignment.topLeft,
                    child: const Text(
                      'New',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w700),
                    ),
                    width: 25,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(0),
                    height: 25,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 255, 77, 0)),
                  ),
                  const SizedBox(
                    height: 0,
                    width: 0,
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(1, 1, 1, 25)),
                  Text(
                  NamePhone,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(120, 1, 1, 10)),
                      // info,
                  const Text(
                    'Súper. Mega. Rápido',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 25)),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Buy now!',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        const Size(120, 30),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 32, 45, 101)),
                      overlayColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 0, 47, 255)),
                    ),
                  ),
                  // Padding( padding: EdgeInsets.fromLTRB(0, 0, 0, 15)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
