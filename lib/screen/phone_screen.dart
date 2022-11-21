//

// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_store/Second_screen/down.dart';
import 'package:mobile_store/Second_screen/phone_cart.dart';
import 'package:mobile_store/screen/basket.dart';
// import 'package:mobile_store/main.dart';
import 'package:mobile_store/screen/main_screen.dart';
import '../Second_screen/gdgsdf.dart';
import '../feature/presentation/wigets/сolors/my_colors.dart';
// import '/json/url.dart';
// import '/Second_screen/down.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({Key? key}) : super(key: key);

  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded (
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
                                builder: (context) => const HomePage()),
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
                      Padding(padding: EdgeInsets.fromLTRB(60, 0, 0, 0)),
                      Text(
                        'Product Details',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorBlue,
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(60, 0, 0, 0)),
                      TextButton(
                        onPressed: () {
                          
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BasketPage()),
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
                            colorOrange,
                          ),
                          minimumSize: MaterialStatePropertyAll(Size(25, 25)),
                          overlayColor: MaterialStatePropertyAll(
                              colorBlue),
                        ),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  width: 800,
                  color: Color.fromARGB(255, 236, 236, 236),
                  child:  CarouselSlider.builder(
                    options: CarouselOptions(
                      
                      enableInfiniteScroll: false,
                      height: 700,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,

                    ),
                    itemCount: phCart.length,//сюда
                    itemBuilder: (context, index, realIndex) {
                      final PhoneCart = phCart[index];//сюда
                      return phoneSlide(PhoneCart, index);
                    },
                  ),
                ),
                Container(
                  height: 400,
                  color: Color.fromARGB(255, 236, 236, 236),
                  child: down(),
                ),
              
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
