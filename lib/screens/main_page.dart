import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mortgage_calc/components/bottom_button.dart';
import 'package:mortgage_calc/constants.dart';
import '../components/title_bar.dart';
import '../components/slider_part.dart';
import '../components/result_part.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int loanNeeded = 50000;
  int timePeriod = 3;
  int downPayment = 6000;
  int result = (50000 - 6000) * 4 ~/ (3 * 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Titlebar(str1: 'Calculate',
              str2: 'Mortgage',
              color1: kBackgroundColor,
              color2: kActiveColor),
          ),
          Expanded(child: Image.asset('images/BACK1.png'),),
          Expanded(
            child: SliderPart(item: 'Rs.' + loanNeeded.toString(),
              str: 'Price',
              sliderChild: Slider(
                value: loanNeeded.toDouble(),
                onChanged: (double newValue) {
                  setState(() {
                    loanNeeded = newValue.round();
                    result = (loanNeeded - downPayment) * 4 ~/ (timePeriod * 12);
                  });
                },
                min: 10000,
                max: 200000,
              ),),
          ),
          Expanded(
            child: SliderPart(item:timePeriod.toString()+' years',
              str: 'Length of Loan',
              sliderChild: Slider(
                value: timePeriod.toDouble(),
                onChanged: (double newValue) {
                  setState(() {
                    timePeriod = newValue.round();
                    result = (loanNeeded - downPayment) * 4 ~/ (timePeriod * 12);
                  });
                },
                min: 1,
                max: 10,
              ),),
          ),
          Expanded(
            child: SliderPart(item: 'Rs.' + downPayment.toString(),
              str: 'Down Payment',
              sliderChild: Slider(
                value: downPayment.toDouble(),
                onChanged: (double newValue) {
                  setState(() {
                    downPayment = newValue.round();
                    result = (loanNeeded - downPayment) * 4 ~/ (timePeriod * 12);
                  });
                },
                min: 2000,
                max: 20000,
              ),),
          ),
          Expanded(child: ResultPart(result: result,),),
          Expanded(child: BottomButton(str: 'See Details', onPress: () {})),
        ],
      ),
    );
  }
}




