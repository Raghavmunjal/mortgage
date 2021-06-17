import 'package:flutter/material.dart';
import 'package:mortgage_calc/constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.str,required this.onPress,required this.color});

  final String str;
  final VoidCallback onPress;
  final color;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: kBottomContainerHeight,
        width: 200,
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(50),
        ),
         margin: EdgeInsets.all(20),
        child: Center(child: Text(str,style: kBottomButtonStyle,)),
      ),
    );
  }
}

