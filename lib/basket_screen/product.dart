import 'package:flutter/material.dart';
import 'package:mobile_store/Second_screen/gdgsdf.dart';
import 'package:mobile_store/basket_screen/quantity.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Padding(padding: EdgeInsets.only(left: 33)),
        Container(height: 90,width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
               Radius.circular(15),
            ),image: DecorationImage(
                  image: NetworkImage(
                    b,
                  ),
                  fit: BoxFit.cover,
                ),


            color: Color.fromARGB(255, 32, 45, 101),

          ),
          // width: 100, height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
children: [Text('Galaxy Note 20',style: TextStyle(fontSize: 20),),Text('Ultra',style: TextStyle(fontSize: 20),),Padding(
  padding: const EdgeInsets.only(top:6.0),
  child:   Text('3000.00',style: TextStyle(fontSize: 20,color: Colors.orange),),
),
],
          ),
        ),Padding(padding: EdgeInsets.only(left: 33),
        ),
        
            
            Container(height: 120,width: 26,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
               Radius.circular(555),
            ),


            color:
             Color.fromARGB(255, 66, 70, 90),
// Color.fromARGB(0, 110, 117, 151),

          ),
          
              child:
               Quantity()
               
               ),
               Padding(padding: EdgeInsets.only(left: 17)),
IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline) )


      ],
    );
  }
}
