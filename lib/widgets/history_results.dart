import 'package:flutter/material.dart';

import '../controllers/calculator_controller.dart';

class HistoryResults extends StatelessWidget {
  const HistoryResults({
    Key? key,
    required this.calculatorCtrl,
  }) : super(key: key);

  final CalculatorController calculatorCtrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( bottom: 20 ),
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text( '${ calculatorCtrl.firstNumber } ${ calculatorCtrl.operation } ${ calculatorCtrl.secondNumber }' ,
        style: TextStyle(fontSize: 30, color: Colors.white60 ) )
      ),
    );
  }
}





