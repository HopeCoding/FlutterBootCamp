import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = "1";
  String result = "0";

  List<String> buttonList = [
    'AC',
    '(',
    ')',
    '7',
    '8',
    '9',
    '4',
    '5',
    '6',
    '1',
    '2',
    '3',
    'C',
    '0',
    '.',
    'MR',
    '+',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Text(
                    userInput,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    result,
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.white),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: buttonList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 1,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return CustomButton(buttonList[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget CustomButton(String text) {
    return InkWell(
      splashColor: Color(0xffee0000),
      onTap: () {
        setState(() {
          handleButtons(text);
        });
      },
      child: Ink(
        decoration: BoxDecoration(
            color: getBgColor(text),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xffffffff),
                blurRadius: 4,
                spreadRadius: 0.5,
                offset: Offset(-3, -3),
              ),
            ]),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
              color: getColor(text),
            ),
          ),
        ),
      ),
    );
  }

  getColor(String text){
    if(text == "(" || text == ")" || text == "C" || text == "+" || text == "MR"){
        return Color.fromARGB(255, 252, 0, 0);
    }
    return Colors.white;
  }

  getBgColor(String text){
    if(text == "AC"){
      return Color.fromARGB(255, 178, 0, 0);
    }
    if(text == "="){
      return Color.fromARGB(255, 6, 234, 25);
    }
    return Color(0xff15212f);

  }

  handleButtons(String text){


    if(text == "MR"){

      userInput = result;

    }
    if(text == "AC"){
      userInput = "";
      result = "0" ;
      return;
    }
    if(text == "C"){
      if(userInput.isNotEmpty){
        userInput = userInput.substring(0,userInput.length-1);
        return;
      }else{
        return null;
      }
    }

    if(text == "="){
      result = calculate();

      userInput= "";

      if(userInput.endsWith(".0")){
        userInput = userInput.replaceAll(".0", "");
        return;
      }

      if(result.endsWith(".0")){
        result = result.replaceAll(".0", "");
        return;
      }


    }

    userInput = userInput + text;


    if(userInput.endsWith("=")){
      userInput=userInput.replaceAll("=", "");
      return userInput;
    }

    if(userInput.endsWith("MR")){
      userInput=userInput.replaceAll("MR", "");
      return userInput;
    }



  }

  String calculate(){
    try{
      var exp = Parser().parse(userInput);
      var evaluation = exp.evaluate(EvaluationType.REAL, ContextModel());
      return evaluation.toString();
    }catch(e){
      return "Error";
    }
  }

}
