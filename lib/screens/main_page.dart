import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mortgage_calc/components/bottom_button.dart';
import 'package:mortgage_calc/constants.dart';
import '../components/title_bar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int loanNeeded=50000;
  int timePeriod=3;
  int downPayment=6000;
  int result=(50000-6000)*4~/(3*12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Titlebar(str1: 'Calculate',str2: 'Mortgage',color1: kBackgroundColor,color2: kActiveColor,),
            Image.asset('images/BACK1.png'),
            SizedBox(height: 30,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price',style: TextStyle(fontSize: 16,color:kBackgroundColor),),
                      Text('Rs.'+loanNeeded.toString(),style: TextStyle(fontSize: 20,color:kActiveColor,fontWeight: FontWeight.w500 ),),
                    ],
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: kActiveColor,
                    overlayColor: Color(0x296258A8),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
                    activeTrackColor: kActiveColor,
                    inactiveTrackColor: Color(0xFFE4DFEC),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(value: loanNeeded.toDouble(), onChanged: (double newValue){
                    setState(() {
                      loanNeeded=newValue.round();
                      result=(loanNeeded-downPayment)*4~/(timePeriod*12);
                    });
                  },
                    min: 10000,
                    max:200000,
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Length of Loan',style: TextStyle(fontSize: 16,color:kBackgroundColor),),
                      Text(timePeriod.toString()+' years',style: TextStyle(fontSize: 20,color:kActiveColor,fontWeight: FontWeight.w500 ),),
                    ],
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: kActiveColor,
                    overlayColor: Color(0x296258A8),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
                    activeTrackColor: kActiveColor,
                    inactiveTrackColor: Color(0xFFE4DFEC),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(value: timePeriod.toDouble(), onChanged: (double newValue){
                    setState(() {
                      timePeriod=newValue.round();
                      result=(loanNeeded-downPayment)*4~/(timePeriod*12);
                    });
                  },
                    min: 1,
                    max:10,
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Down Payment',style: TextStyle(fontSize: 16,color:kBackgroundColor),),
                      Text('Rs.'+downPayment.toString(),style: TextStyle(fontSize: 20,color:kActiveColor,fontWeight: FontWeight.w500 ),),
                    ],
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: kActiveColor,
                    overlayColor: Color(0x296258A8),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
                    activeTrackColor: kActiveColor,
                    inactiveTrackColor: Color(0xFFE4DFEC),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(value: downPayment.toDouble(), onChanged: (double newValue){
                    setState(() {
                      downPayment=newValue.round();
                      result=(loanNeeded-downPayment)*4~/(timePeriod*12);
                    });
                  },
                    min: 2000,
                    max:10000,
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('4%',style: kResultStyle,),
                  Text('/pa',style: kInterestStyle,),
                  SizedBox(width: 100,),
                  Text('Rs. '+result.toString(),style: kResultStyle,),
                  Text('/mo',style: kInterestStyle,),
                ],
              ),
            ),
            SizedBox(height: 15,),
            BottomButton(str: 'See Details', onPress:(){

            })
          ],
        ),
      
    );
  }
}




