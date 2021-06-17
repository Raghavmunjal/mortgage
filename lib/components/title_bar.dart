import 'package:flutter/material.dart';


class Titlebar extends StatelessWidget {

  final String str1;
  final String str2;
  final Color color1;
  final Color color2;

  Titlebar({required this.str1,required this.str2,required this.color1,required this.color2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(str1,style: TextStyle(fontSize: 16,color:color1),),
              Text(str2,style: TextStyle(fontSize: 25,color:color2,fontWeight: FontWeight.bold ),),
            ],
          )
        ],
      ),
    );
  }
}


