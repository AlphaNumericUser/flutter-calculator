import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/calculator_controller.dart';
import 'widgets.dart';

class MathResults extends StatelessWidget {

  final calculatorCtrl = Get.find<CalculatorController>();

  MathResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        HistoryResults(calculatorCtrl: calculatorCtrl),
        MainResultText( text: '${ calculatorCtrl.mathResult }' ),
      ],
    ));
  }
}


