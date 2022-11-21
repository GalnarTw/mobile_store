import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_store/screen/phone_screen.dart';

import '../basket_screen/basket.dart';
import '../feature/presentation/wigets/сolors/my_colors.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 46,
                  color: Color.fromARGB(255, 236, 236, 236),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(33, 0, 0, 0)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PhonePage()),
                          );
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            colorBlue,
                          ),
                          minimumSize: MaterialStatePropertyAll(Size(40, 40)),
                          overlayColor: MaterialStatePropertyAll(
                            colorOrange,
                          ),
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(120, 0, 0, 0)),
                      Text(
                        'Add address',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorBlue,
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      TextButton(
                        onPressed: () {
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                          ),
                          backgroundColor: MaterialStatePropertyAll(
                            colorOrange,
                          ),
                          minimumSize: MaterialStatePropertyAll(Size(25, 25)),
                          overlayColor: MaterialStatePropertyAll(
                              colorBlue),
                        ),
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  color: Color.fromARGB(255, 236, 236, 236),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(42, 0, 0, 0),
                        child: Text(
                          'My Cart',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: colorBlue),
                        ),
                      ),
                    ],
                  ),
                ),Container(
                  
                  color: Color.fromARGB(255, 236, 236, 236),
                  child: Container(decoration: BoxDecoration(
                    color: colorBlue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      )),
                    
                    child: basketBottom()),
                  
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
