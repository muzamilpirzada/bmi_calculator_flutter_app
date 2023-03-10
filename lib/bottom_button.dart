import 'constains.dart';

import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  const BottomButton({Key? key,required this.buttonTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: kBottomContainerColour,
      margin: EdgeInsets.only(top:10),
      width: double.infinity,
      height: kBottomContainerHeigth,
      child: Center(child: Text(buttonTitle,style: KlargeButtonText,),),
    );
  }
}