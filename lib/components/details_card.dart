import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    required this.str,
    required this.result,
    required this.colour,
  }) ;

  final int result;
  final String str;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: colour,
              ),
              SizedBox(width: 7,),
              Text(str,style: TextStyle(color: Colors.white,fontSize: 18),),
            ],
          ),
          Text('Rs. '+result.toString(),style: TextStyle(color: Colors.white,fontSize: 18),),
        ],
      ),
    );
  }
}