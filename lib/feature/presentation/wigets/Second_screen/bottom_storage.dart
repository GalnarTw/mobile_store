import 'package:flutter/material.dart';

import '../сolors/my_colors.dart';

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  Color storageText1 = colorWhite;
  Color storageText2 = colorGrey;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 58.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: count == 2
                ? () {
                    setState(() {
                      count = 1;
                      storageText1 = colorWhite;
                      storageText2 = colorGrey;
                    });
                  }
                : null,
            style: ElevatedButton.styleFrom(
              foregroundColor: colorGrey,
              disabledForegroundColor: Colors.white,
              backgroundColor: colorWhite,
              disabledBackgroundColor: colorOrange,
              minimumSize: const Size(71, 31),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              '128GB',
              style: TextStyle(
                  color: storageText1,
                  fontSize: 13,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ElevatedButton(
              onPressed: count == 1
                  ? () {
                      setState(() {
                        count = 2;
                        storageText2 = colorWhite;
                        storageText1 = colorGrey;
                      });
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                foregroundColor: colorGrey,
                disabledForegroundColor: Colors.white,
                backgroundColor: colorWhite,
                disabledBackgroundColor: colorOrange,
                minimumSize: const Size(71, 31),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white70, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                '256GB',
                style: TextStyle(
                    color: storageText2,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
