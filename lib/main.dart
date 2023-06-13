import 'package:flutter/material.dart';

import 'Inputpage.dart';

void main() {
  runApp(const BMICalcuator());
}

class BMICalcuator extends StatelessWidget {
  const BMICalcuator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xff0a0e21),
          scaffoldBackgroundColor: const Color(0xff0a0e21),
         // fontFamily: 'Georgia',
      ),
      home: Inputpage(),
    );
  }
}


