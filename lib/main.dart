import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicer'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  DicePageState createState() => DicePageState();
}
class DicePageState extends State<DicePage> {
  int leftDiceNumber = 1 ;
  int rightDiceNumber = 1 ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        Row(
          children: <Widget>[
            /*Expanded widget resize the object to fill the screen properly.*/
            Expanded(
              /*flex is used to expand the object according to the ratio, without taking anything out of the screen.*/
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                  });

                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              /*flex is used to expand the object according to the ratio, without taking anything out of the screen.*/
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),

        FlatButton(
          onPressed: () {
            setState(() {
              rightDiceNumber = Random().nextInt(6) + 1;
              leftDiceNumber = Random().nextInt(6) + 1;
            });
          },
          child: Card(
              color: Colors.white,
              margin: EdgeInsets.all(20.0),
              child:ListTile(
                  leading: Icon(
                    Icons.stars,
                    color: Colors.red,
                  ),
                  title : Text(
                    'ROLL BOTH DICES',
                    style: TextStyle(
                      letterSpacing: 3.0,
                        color: Colors.black,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold
                    ),
                  )
              )
          ),
        ),
      ],
    );
  }
}

