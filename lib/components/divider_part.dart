import 'package:flutter/material.dart';


class DividerPart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Divider(height: 2,thickness: 2,color: Color(0x60130F31),indent: 20,endIndent: 20,),
    );
  }
}