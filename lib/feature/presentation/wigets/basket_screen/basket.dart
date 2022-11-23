// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_store/feature/presentation/wigets/basket_screen/quantity.dart';
import 'package:mobile_store/feature/presentation/wigets/%D1%81olors/my_colors.dart';

Widget basketBottom(
      String image, int total, String free,int price, String title,String images, int prices, String titles,
        ) =>
     Column(
            children: [
              Container(
                height: 30,
                color: const Color.fromARGB(0, 233, 30, 98),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  height: 90,
                  color: colorBlue,
                  child: Row(
      children: [const Padding(padding: EdgeInsets.only(left: 33)),
        Container(height: 90,width: 90,
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(
               Radius.circular(15),
            ),image: DecorationImage(
                  image: NetworkImage(
                    '$image,'
                  ),
                  fit: BoxFit.cover,
                ),


            color: const Color.fromARGB(255, 32, 45, 101),

          ),
         
        ),
        Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: SizedBox(width: 140,
            child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
children: [Text('$title',style: const TextStyle(fontSize: 20,color: colorWhite,fontFamily: 'MarkPro'),),Padding(
  padding: const EdgeInsets.only(top:6.0),
  child:   Text('\$$price',style: const TextStyle(fontSize: 20,color: colorOrange),),
),
],
            ),
          ),
        ),const Padding(padding: EdgeInsets.only(left: 33),
        ),
        
            
            Container(height: 68,width: 26,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
               Radius.circular(555),
            ),


            color:
             Color.fromARGB(255, 66, 70, 90),

          ),
          
              child:
               const Quantity()
               
               ),
               const Padding(padding: EdgeInsets.only(left: 17)),
IconButton(onPressed: (){}, icon: SvgPicture.asset(
                            'lib/assets/pictures/end_page/basket.svg',color: colorGreylight,), )


      ],
    ),
    
                ),
              ),
              Container(
                height: 45,
                color: colorBlue,
              ),
              Container(
                height: 90,
                color: colorBlue,
                child: Row(
      children: [const Padding(padding: EdgeInsets.only(left: 33)),
        Container(height: 90,width: 90,
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(
               Radius.circular(15),
            ),image: DecorationImage(
                  image: NetworkImage(
                    '$images,'
                  ),
                  fit: BoxFit.cover,
                ),


            color: const Color.fromARGB(255, 32, 45, 101),

          ),
         
        ),
        Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: SizedBox(width: 140,
            child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
children: [Text('$titles',style: const TextStyle(fontSize: 20,color: colorWhite,fontFamily: 'MarkPro'),),Padding(
  padding: const EdgeInsets.only(top:6.0),
  child:   Text('\$$prices',style: const TextStyle(fontSize: 20,color: colorOrange),),
),
],
            ),
          ),
        ),const Padding(padding: EdgeInsets.only(left: 33),
        ),
        
            
            Container(height: 68,width: 26,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
               Radius.circular(555),
            ),


            color:
             colorQuantity,

          ),
          
              child:
               const Quantity()
               
               ),
               const Padding(padding: EdgeInsets.only(left: 17)),
IconButton(onPressed: (){}, icon: SvgPicture.asset(
                            'lib/assets/pictures/end_page/basket.svg',color: colorGreylight,), )


      ],
    ),
              ),
              Container(
                height: 170,
                color: colorBlue,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 2,
                  color: colorGrey,
                ),
              ),
              SizedBox(
                height: 82,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Total',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Delivery',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$$total',
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          '$free',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 2,
                  color: colorGrey,
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          const Size(35, 35),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(colorOrange),
                        overlayColor: MaterialStateProperty.all(
                            colorOrange),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        height: 1111,
                        width: 1111,
                        child: Center(
                            child: Text(
                          'Checkout',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        )),
                      )),
                ),
              ),
            ],
          );
        
