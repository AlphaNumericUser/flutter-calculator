import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/calculator_controller.dart';
import '../widgets/widgets.dart';


class CalculatorScreen extends StatelessWidget {

  final calculatorCtrl = Get.put( CalculatorController() );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric( horizontal: 10 ),
          child: Column(
            children: [
              
              Expanded(child: Container()),

              MathResults(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton( 
                      text: 'AC',
                      bgColor: Color(0xffA5A5A5 ),
                      onPressed: () => calculatorCtrl.resetAll(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '+/-',
                      bgColor: Color(0xffA5A5A5 ),
                      onPressed: () => calculatorCtrl.changeNegativePositive(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: 'del',
                      bgColor: Color(0xffA5A5A5 ),
                      onPressed: () => calculatorCtrl.deleteLastEntry(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '/',
                      bgColor: Color(0xffF0A23B ),
                      onPressed: () => calculatorCtrl.selectOperation('/'),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton( 
                      text: '7',
                      onPressed: () => calculatorCtrl.addNumber('7'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '8',
                      onPressed: () => calculatorCtrl.addNumber('8'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '9',
                      onPressed: () => calculatorCtrl.addNumber('9'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: 'x',
                      bgColor: Color(0xffF0A23B ),
                      onPressed: () => calculatorCtrl.selectOperation('X'),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton( 
                      text: '4', 
                      onPressed: () => calculatorCtrl.addNumber('4'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '5', 
                      onPressed: () => calculatorCtrl.addNumber('5'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '6', 
                      onPressed: () => calculatorCtrl.addNumber('6'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '—',
                      bgColor: Color(0xffF0A23B ),
                      onPressed: () => calculatorCtrl.selectOperation('—'),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CalculatorButton( 
                      text: '1', 
                      onPressed: () => calculatorCtrl.addNumber('1'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '2', 
                      onPressed: () => calculatorCtrl.addNumber('2'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '3', 
                      onPressed: () => calculatorCtrl.addNumber('3'),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton(
                      text: '+',  
                      bgColor: Color(0xffF0A23B ),
                      onPressed: () => calculatorCtrl.selectOperation('+'),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '0', 
                    big: true,
                    onPressed: () => calculatorCtrl.addNumber('0'),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '.', 
                      onPressed: () => calculatorCtrl.addDecimalPoint(),
                    ),
                  ),
                  Expanded(
                    child: CalculatorButton( 
                      text: '=',
                      bgColor: Color(0xffF0A23B ),
                      onPressed: () => calculatorCtrl.calculateResult(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
   );
  }
}