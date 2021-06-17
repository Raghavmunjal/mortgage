

import 'package:flutter/material.dart';
import 'package:mortgage_calc/constants.dart';

class SliderPart extends StatelessWidget {
  SliderPart(
      {required this.item, required this.str, required this.sliderChild});
  final String item;
  final String str;
  final Widget sliderChild;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                str,
                style: TextStyle(fontSize: 16, color: kBackgroundColor),
              ),
              Text(
                item,
                style: TextStyle(
                    fontSize: 20,
                    color: kActiveColor,
                    fontWeight: FontWeight.w500),
              ),
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
          child: sliderChild,
        ),
      ],
    );
  }
}


