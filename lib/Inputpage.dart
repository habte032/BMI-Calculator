import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart   ';
import 'Column1.dart';
import 'Container1.dart';
import 'Constants.dart';
import 'ResultPage.dart';
import 'CalculateBmi.dart';

enum Gender{
  male,female
}

class Inputpage extends StatefulWidget {
  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
   Gender selectedGender=Gender.male;
   int height=180;
   int weight=50;
   int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0a0e21),
        title: Center(child: Text('BMI Calculator',)),
      ),
      body: SafeArea(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child:
            Row(children: [
              Expanded(child: GestureDetector(
                onTap: (){
               setState(() {
                 selectedGender=Gender.male;
               });
                },
                child: ReuseContainer(colors: selectedGender==Gender.male?kactiveColor:kinactiveColor,
                  widget:
                  ReuseColumn(text: 'Male',icon:FontAwesomeIcons.mars),
                ),
              ),
              ),
              Expanded(child:GestureDetector(
                onTap: (){
                  setState(() {
                    selectedGender=Gender.female;
                  });
                },
                child: ReuseContainer(colors: selectedGender==Gender.female?kactiveColor:kinactiveColor,
                  widget:
                ReuseColumn(text: 'Female',icon: FontAwesomeIcons.venus,
                ),
                ),
              ),
              ),
            ],
            ),
          ),

          Expanded(child: ReuseContainer(colors: kactiveColor,
            widget:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height',style: kstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                  Text('$height',style: knumberstyle),
                  Text('cm',style: kstyle,)
                ],),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (height > 1) { // Ensure height doesn't go below 1
                                height--;
                              }
                            });
                          },
                          icon: Icon(FontAwesomeIcons.minus),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: SliderTheme(
                          data: SliderThemeData(
                            // ... (other slider theme properties)
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 1.0,
                            max: 250.0,
                            divisions: 250,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (height < 250) { // Ensure height doesn't go above 250
                                height++;
                              }
                            });
                          },
                          icon: Icon(FontAwesomeIcons.plus),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),),
          ),

          Expanded(
            child:
            Row(children: [
              Expanded(child:
              ReuseContainer(colors: kactiveColor,
                widget:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Text('Weight(Kg)',style: kstyle,),
                    Text('$weight',style: knumberstyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(onPressed: (){
                          setState(() {
                           if(weight>0) {
                              weight--;
                           }
                          });
                        },
                            backgroundColor: Color(0xff4c4f5e),
                            child: Icon(FontAwesomeIcons.minus,size: 18,color: kiconButtonColor,)
                        ),
                        SizedBox(width: 10,),
                        FloatingActionButton(onPressed: (){
                          setState(() {
                            weight++;
                          });

                        },
                            backgroundColor: Color(0xff4c4f5e),
                            child: const Icon(FontAwesomeIcons.add,size: 18,color: kiconButtonColor,)
                        )
                      ],)
                  ],
                ),),
              ),
              Expanded(child:
              ReuseContainer(colors: kactiveColor,
                widget:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Age',style: kstyle,),
                  Text('$age',style: knumberstyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    FloatingActionButton(onPressed: (){
                      setState(() {
                          age--;
                      });

                    },
                        backgroundColor: Color(0xff4c4f5e),
                        child: Icon(FontAwesomeIcons.minus,size: 18,color: kiconButtonColor,)
                    ),
                    SizedBox(width: 10,),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        if (age>0){
                          age--;
                        }
                      });

                    },
                        backgroundColor: Color(0xff4c4f5e),
                        child: Icon(FontAwesomeIcons.add,size: 18,color: kiconButtonColor,)
                    )
                  ],)
                ],
              ),),
              ),
            ],),
          ),
          Container(
            height: 80,
            margin: EdgeInsets.only(top: 10),
            color:kpink,
            child: TextButton(
                onPressed: (){
                  CalculateBMI cal= new CalculateBMI(height: height, weight: weight);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>ResultPage(
                            bmiCalculation: cal.calculateBmi(),
                            bmiResult: cal.getresult(),
                            bmimessage: cal.getmessage(),
                            bmirange:cal.getrange()
                        )));
                },
                child: Text('CALCULATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
            ),
          )
        ],
      ),
      ),
    );
  }
}




