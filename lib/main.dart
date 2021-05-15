import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator for Kids",
      theme: ThemeData(primaryColor: Colors.black),
      home: calculatorKids(),
    );
  }
}

class calculatorKids extends StatefulWidget {
  @override
  _calculatorKidsState createState() => _calculatorKidsState();
}

class _calculatorKidsState extends State<calculatorKids> {
  String UserInput = "";
  String Answer = "0";
  String expression = "";

  buttonPressed(String buttonText) {
    setState(() {
      //  CLEAR
      if (buttonText == "C") {
        UserInput = "";
        Answer = "0";
        //DELETE
      } else if (buttonText == "⌫") {
        UserInput = UserInput.substring(0, UserInput.length - 1);
        if (UserInput == "") {
          UserInput = "0";
        }
        //SAMA DENGAN
      } else if (buttonText == "=") {
        equalPressed();
        /* expression = UserInput;
        expression = expression.replaceAll("x", "*");
        expression = expression.replaceAll("/", "/"); */
      } else if (buttonText == "1") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "2") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "3") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "4") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "5") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "6") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "7") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "8") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "9") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "0") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "00") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == ".") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "+") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "-") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "x") {
        setState(() {
          UserInput += buttonText;
        });
      } else if (buttonText == "/") {
        setState(() {
          UserInput += buttonText;
        });
      }
    });
  }

  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: buttonColor,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(10),
        ),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //bagian atas
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        UserInput,
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      Text(
                        Answer,
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            //bagian bawah
            Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(10),
                    //kotak pencetan di sini nanti, 4 kesamping, 5 ke bawah
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //shaf ke 1
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Spacer(),
                              buildButton("C", 1, Colors.black),
                              Spacer(),
                              buildButton("⌫", 1, Colors.black),
                              Spacer(),
                              buildButton("😊", 1, Colors.black),
                              Spacer(),
                              buildButton("=", 1, Colors.black),
                              Spacer(),
                            ]),
                        //shaf ke 2
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Spacer(),
                              buildButton("7", 1, Colors.black),
                              Spacer(),
                              buildButton("8", 1, Colors.black),
                              Spacer(),
                              buildButton("9", 1, Colors.black),
                              Spacer(),
                              buildButton("/", 1, Colors.black),
                              Spacer(),
                            ]),
                        //shaf ke 3
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Spacer(),
                              buildButton("4", 1, Colors.black),
                              Spacer(),
                              buildButton("5", 1, Colors.black),
                              Spacer(),
                              buildButton("6", 1, Colors.black),
                              Spacer(),
                              buildButton("x", 1, Colors.black),
                              Spacer(),
                            ]),
                        //sahf ke 4
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Spacer(),
                              buildButton("1", 1, Colors.black),
                              Spacer(),
                              buildButton("2", 1, Colors.black),
                              Spacer(),
                              buildButton("3", 1, Colors.black),
                              Spacer(),
                              buildButton("+", 1, Colors.black),
                              Spacer(),
                            ]),
                        //shaf ke 5
                        Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Spacer(),
                              buildButton("00", 1, Colors.black),
                              Spacer(),
                              buildButton("0", 1, Colors.black),
                              Spacer(),
                              buildButton(".", 1, Colors.black),
                              Spacer(),
                              buildButton("-", 1, Colors.black),
                              Spacer(),
                            ]),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  //fungsi buat ngitung operasi
  void equalPressed() {
    String finalUserinput = UserInput;
    finalUserinput = UserInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finalUserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    Answer = eval.toString();
  }
}
