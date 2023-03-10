import 'package:bmi_calculator/Input_page.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/icon_contect.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constains.dart';
import 'calculator_brain.dart';

enum Gender {
  male,
  female,
  non_null,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.non_null;
  int Height = 180;
  int weight = 60;
  int age =18;
  // Color maleCardColor =inactiveCardColor;
  // Color femaleCardColor =inactiveCardColor;
  // //male =1 ; female 2;
  // void updateColor(Gender selectedGender){
  //   if(selectedGender==Gender.male){
  //     if(maleCardColor ==inactiveCardColor){
  //       maleCardColor =activeCardColor;
  //       femaleCardColor =inactiveCardColor;
  //     }else{
  //       maleCardColor =inactiveCardColor;
  //
  //     }
  //   }
  //   if(selectedGender==Gender.female){
  //     if(femaleCardColor ==inactiveCardColor){
  //       femaleCardColor =activeCardColor;
  //       maleCardColor =inactiveCardColor;
  //     }
  //     else{
  //       femaleCardColor =inactiveCardColor;
  //
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      // updateColor(Gender.male);
                      selectedGender = Gender.male;
                    });
                  },
                  child: ResusableCard(
                    colour: selectedGender == Gender.male
                        ? kactiveCardColor
                        : kinactiveCardColor, //maleCardColor,
                    childCard: IconContect(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      // updateColor(Gender.female);
                      selectedGender = Gender.female;
                    });
                  },
                  child: ResusableCard(
                    colour: selectedGender == Gender.female
                        ? kactiveCardColor
                        : kinactiveCardColor, // femaleCardColor,
                    childCard: IconContect(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ResusableCard(
              colour: kactiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        Height.toString(),
                        style: kWeightstyle,
                      ),
                      Text(
                        'cm',
                        style: klabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      thumbColor: Color(0xffEB1555),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29EB1555),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      value: Height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      inactiveColor: Color(0xff8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          Height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ResusableCard(
                  colour: kactiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: klabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kWeightstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff4C4F5E),
                            child: Center(
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff4C4F5E),
                            child: Center(
                              child: Icon(FontAwesomeIcons.plus),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ResusableCard(
                  colour: kactiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: klabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kWeightstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff4C4F5E),
                            child: Center(
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                              width: 56.0,
                              height: 56.0,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff4C4F5E),
                            child: Center(
                              child: Icon(FontAwesomeIcons.plus),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
           GestureDetector(
               onTap: (){
                 CalculatorBrain calc =CalculatorBrain(height: Height, weight: weight);
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultsPage(
                   bmiResult: calc.calculateBMi(),
                   resultText: calc.getResult(),
                   interpretation: calc.getInterpretation(),
                 )));
               },
               child: BottomButton(buttonTitle:'Calculate',)),
        ],
      ),
    );
  }
}



//
// class RoundIconButton extends StatelessWidget {
//
//
//    RoundIconButton({Key? key,required this.icon, required this.onPressed}) : super(key: key);
//
//    final Icon icon;
//    final Function onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       onPressed:onPressed(),
//       elevation: 6.0,
//       constraints: BoxConstraints.tightFor(
//         width: 56.0,
//         height: 56.0,
//       ),
//       shape: CircleBorder(),
//       fillColor: Color(0xff4C4F5E),
//       child: Center(
//         child: icon,
//       ),
//     );
//   }
// }
