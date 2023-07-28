import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}



class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var changeImage = 'assets/dice2.png';

  var leftDiceNumber = '2';
  var RightDiceNumber = '3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice App'),
        ),
        body:Center(
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                      onTap: (){

                        setState(() {
                          Random random = new Random();
                          int randomNumber = random.nextInt(6)+1;
                          leftDiceNumber = randomNumber.toString();
                        });





                         },
                      child: Image.asset('assets/dice$leftDiceNumber.png',))),
              //Empty space
              SizedBox(
                width: 50,
              ),
              Expanded(
                  child: GestureDetector(
                      onTap: (){
                      setState(() {
                        Random random = new Random();
                        int randomNumber = random.nextInt(6)+1;
                        RightDiceNumber = randomNumber.toString();
                      });

                      },
                      child: Image.asset('assets/dice$RightDiceNumber.png',))),
            ],

          ),
        )


    );
  }
}
