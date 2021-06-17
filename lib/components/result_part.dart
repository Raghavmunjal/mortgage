import 'package:flutter/material.dart';
import 'package:mortgage_calc/constants.dart';

class ResultPart extends StatelessWidget {
  const ResultPart({
    required this.result,
  }) ;

  final int result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '4%',
            style: kResultStyle,
          ),
          Text(
            '/pa',
            style: kInterestStyle,
          ),
          SizedBox(
            width: 100,
          ),
          Text(
            'Rs. ' + result.toString(),
            style: kResultStyle,
          ),
          Text(
            '/mo',
            style: kInterestStyle,
          ),
        ],
      ),
    );
  }
}

//result: result