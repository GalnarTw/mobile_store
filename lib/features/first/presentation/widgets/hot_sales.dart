// ignore_for_file: non_constant_identifier_names, sort_child_properties_last

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:mobile_store/assets/colors/my_colors.dart';


Widget Iphone12(
  BuildContext context,
  String pghhCart,
  int index,
  String NamePhone,
  bool is_new,
) =>
    Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.all(10),
      height: 250,
      width: 460,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                pghhCart,
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
                  is_new
                      ? Container(
                          transformAlignment: Alignment.topLeft,
                          child:  Text(
                            AppLocalizations.of(context)!.neew,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w700),
                          ),
                          width: 45,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(0),
                          height: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: colorOrange),
                        )
                      : const SizedBox(width: 25,height: 25,),
                  const SizedBox(
                    height: 0,
                    width: 0,
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(1, 1, 1, 25)),
                  Text(
                    NamePhone,
                    style: const TextStyle(
                      color: colorWhite,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(120, 1, 1, 10)),
                  const Text(
                    'Súper. Mega. Rápido',
                    style: TextStyle(
                      color: colorWhite,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 25)),
                  ElevatedButton(
                    onPressed: () {},
                    child:  Text( 
                      AppLocalizations.of(context)!.category,
                      // AppLocalizations.of(context)!.buy,
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        const Size(120, 30),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(colorBlue),
                      overlayColor: MaterialStateProperty.all(colorBlue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
