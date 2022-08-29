import 'package:calculator/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  void equalPress() {
    String finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(66, 63, 25, 25),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: 'AC',
                          onPressed: () {
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '+/-',
                          onPressed: () {},
                        ),
                        MyButton(
                          title: '%',
                          onPressed: (() {}),
                        ),
                        MyButton(
                          title: '/',
                          color: Color(0xffffa00a),
                          onPressed: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '7',
                          onPressed: () {
                            userInput += '7';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '8',
                          onPressed: () {
                            userInput += '8';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '9',
                          onPressed: () {
                            userInput += '9';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: 'x',
                          color: Color(0xffffa00a),
                          onPressed: () {
                            userInput += 'x';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '4',
                          onPressed: () {
                            userInput += '4';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '5',
                          onPressed: () {
                            userInput += '5';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '6',
                          onPressed: () {
                            userInput += '6';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '-',
                          color: Color(0xffffa00a),
                          onPressed: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '1',
                          onPressed: () {
                            userInput += '1';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '2',
                          onPressed: () {
                            userInput += '2';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '3',
                          onPressed: () {
                            userInput += '3';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '+',
                          color: Color(0xffffa00a),
                          onPressed: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '0',
                          onPressed: () {
                            userInput += '0';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '.',
                          onPressed: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: 'DEL',
                          onPressed: () {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '=',
                          color: const Color(0xffffa00a),
                          onPressed: () {
                            equalPress();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
