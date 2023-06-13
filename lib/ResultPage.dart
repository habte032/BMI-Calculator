import 'package:flutter/material.dart';
import 'Constants.dart';
import 'Inputpage.dart';
class ResultPage extends StatelessWidget {

  final String bmiCalculation;
  final String bmiResult;
  final String bmimessage;
  final String bmirange;

  ResultPage({required this.bmiCalculation,required this.bmiResult,required this.bmimessage,required this.bmirange });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: kactiveColor,
        appBar: AppBar(
          backgroundColor: Color(0xff0a0e21),
          title: Center(child: Text('BMI Calculator',)
          ),
        ),
        body: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: kactiveColor,
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
            ),
            Expanded(
              flex: 5,
                child: Container(
              margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
              color: kinactiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiResult,style: TextStyle(color: Color(0xff24d876),fontSize: 22 ),),
                  Text(bmiCalculation,style: knumberstyle,),
                  SizedBox(height: 2,),
                  Text('$bmiResult BMI range',style: kstyle,),
                  Text('($bmirange)kg/m²',style: kstyle,),
                  SizedBox(height: 5,),
                  Text(bmimessage,style: kResultText,textAlign: TextAlign.center,),

                ],
              ),
            )
            ),
            Container(
              height: 80,
              margin: EdgeInsets.only(top: 10),
              color:kpink,
              child: TextButton(
                  onPressed: (){
                      Navigator.pop(context,);
                  },
                  child: Text('Re-CALCULATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
              ),
            )

          ],
        )),
      ),
    );
  }
}
