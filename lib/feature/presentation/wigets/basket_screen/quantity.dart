import 'package:flutter/material.dart';

class Quantity extends StatefulWidget {
  const Quantity({super.key});

  @override
  State<Quantity> createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
      children:const [
        Text(
          '-',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '2',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '+',
          style: TextStyle(fontSize: 17),
        ),
      ],
    );
  }
}
