import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categorycard extends StatelessWidget {
  String image;
  String name;


  Categorycard({super.key, required this.image,required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        height:130,
        color: Colors.white54,
        child: Stack(
          children: [
            Column(
              children: [
                Container(

                  height: 70,
                  width: 60,
                  decoration: BoxDecoration(


                      image: DecorationImage(image: AssetImage("${image}"),
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${name}"),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}