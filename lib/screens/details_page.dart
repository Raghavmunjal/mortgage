import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mortgage_calc/components/bottom_button.dart';
import 'package:mortgage_calc/components/title_bar.dart';
import 'package:mortgage_calc/constants.dart';
import '../components/details_card.dart';
import '../components/divider_part.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.result});
  final int result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColorDetails,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Titlebar(
              str1: 'Calculate',
              str2: 'Mortgage',
              color1: Colors.white,
              color2: Colors.white
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Rs. ' + result.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                  Text(
                    '/mo',
                    style: TextStyle(
                        color: Colors.white38,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                ],
              ),
              SizedBox(height: 7,),
              Text(
                'Total Monthly Payment',
                style: TextStyle(
                    color: Colors.white54, fontSize: 18, letterSpacing: 1.5),
              ),
            ],
          ),
          Column(
            children: [
              DetailsCard(result: result-900,str:'Principle & Interest',colour:Color(0XFF130F31)),
              DividerPart(),
              DetailsCard(result: 100,str:'Homeowner Insurance',colour:Color(0xFFF8BE8F)),
              DividerPart(),
              DetailsCard(result: 800,str:'Property Tax',colour:Color(0xFFE8618D)),
              DividerPart(),
            ],
          ),
          Column(
            children: [
              Text(
                'Ready to Buy?',
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 1.5),
              ),
              BottomButton(str: 'Choose Bank', onPress: (){},color:Color(0x60130F31)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(

                  height: 40,
                  width: 160,
                  decoration: BoxDecoration(
                    color:Color(0x29FFFFFF),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.keyboard_arrow_left_outlined,color: Colors.white54,),
                      Text('Back to Calculator',style: TextStyle(fontSize: 15,color: Colors.white54),),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}




