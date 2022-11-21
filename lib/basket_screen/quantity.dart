import 'package:flutter/material.dart';

class Quantity extends StatefulWidget {
  const Quantity({super.key});

  @override
  State<Quantity> createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
// visualDensity: VisualDensity(horizontal: 1,vertical: 1),
          minimumSize: MaterialStateProperty.all(
            const Size(20, 20),
          ),
          fixedSize: MaterialStateProperty.all(
            const Size(20, 20),
          ),

          padding: MaterialStateProperty.all(EdgeInsets.all(0)),

          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 255, 77, 0)),

          foregroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 32, 45, 101)),

          overlayColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 97, 97, 97)),

          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000)),
          ),
        ),
        child: Text(
          '-',
          style: TextStyle(fontSize: 15),
        ),
      ),
      Text(
        'da',
        style: TextStyle(
            // fontSize: 7
            ),
      ),
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          // visualDensity: VisualDensity(horizontal: 1,vertical: 1),
          minimumSize: MaterialStateProperty.all(
            const Size(1, 1),
          ),
          padding: MaterialStateProperty.all(EdgeInsets.all(0)),
          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 255, 77, 0)),
          foregroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 32, 45, 101)),
          overlayColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 97, 97, 97)),
          // shape: MaterialStateProperty.all(
          //   RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(1110)),
          // ),
        ),
        child: Text(
          '+',
        ),
      ),
    ]);
  }
}
