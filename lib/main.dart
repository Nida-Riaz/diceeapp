import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('DiceApp')),
          backgroundColor: Colors.pinkAccent,
        ),
        backgroundColor: Colors.white,
        body: DiceApp(),
      ),
debugShowCheckedModeBanner: false,
    ),
  );
}
class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);
  @override
  _DiceAppState createState() => _DiceAppState();
}
class _DiceAppState extends State<DiceApp> {
  var imageone = 1;
  var imagetwo = 1;
  var imagethree = 1;
  var imagefour = 1;
  var s1=0;
  var s2=0;
  var s3=0;
  var s4=0;
  bool press1 = true;
  bool press2 = false;
  bool press3 = false;
  bool press4 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Flexible(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,

                    borderRadius: BorderRadius.all(Radius.circular(10),),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    if(press1==true){
                                      press1=false;
                                      press2=true;
                                    imageone=Random().nextInt(6)+1;
                                    s1=s1+imageone;

                                    if(s1>=32)
                                      {
                                        s1=0;
                                        s2=0;
                                        s3=0;
                                        s4=0;
                                        _shownotice(context);

                                      }
                                      if(imageone==6)
                                      {
                                        press1=true;
                                        press2=false;
                                        press3=false;
                                        press4=false;
                                      }
                                    }
                                  });
                                },
                                child: Image.asset(
                                  'images/dice$imageone.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                            Expanded(
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    if(press2==true){
                                      press2=false;
                                      press3=true;
                                    imagetwo=Random().nextInt(6)+1;
                                    s2=s2+imagetwo;
                                    if(s2>=32)
                                    {
                                      s1=0;
                                      s2=0;
                                      s3=0;
                                      s4=0;
                                      _shownotice(context);

                                    }
                                      if(imagetwo==6)
                                      {
                                        press1=false;
                                        press2=true;
                                        press3=false;
                                        press4=false;
                                      }
                                    }

                                  });
                                },
                                child: Image.asset(
                                  'images/dice$imagetwo.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    if(press3==true){
                                      press3=false;
                                      press4=true;
                                    imagethree=Random().nextInt(6)+1;
                                    s3=s3+imagethree;
                                    if(s3>=32)
                                    {
                                      s1=0;
                                      s2=0;
                                      s3=0;
                                      s4=0;
                                      _shownotice(context);

                                    }
                                      if(imagethree==6)
                                      {
                                        press1=false;
                                        press2=false;
                                        press3=true;
                                        press4=false;
                                      }
                                    }
                                  });
                                },
                                child: Image.asset(
                                  'images/dice$imagethree.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                            Expanded(
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    if(press4==true){
                                      press4=false;
                                      press1=true;
                                    imagefour=Random().nextInt(6)+1;
                                    s4=s4+imagefour;
                                    if(s4>=32)
                                    {
                                      s1=0;
                                      s2=0;
                                      s3=0;
                                      s4=0;
                                      _shownotice(context);

                                    }
                                      if(imagefour==6)
                                      {
                                        press1=false;
                                        press2=false;
                                        press3=false;
                                        press4=true;
                                      }}
                                  });
                                },
                                child: Image.asset(
                                  'images/dice$imagefour.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),

                          ],

                        ),
                      ),
                    ],
                  ),
                ),
            ),

            Flexible(
            flex: 3,
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blue,

                  borderRadius: BorderRadius.all(Radius.circular(10),),
                ),
              child: Column(
                children: [
                  Row(
                    
                    children: [
                      Container(

                       // child: Text(
                         // 'Match Summary',
                          //style: TextStyle(
                           // fontSize: 30,
                           // fontWeight: FontWeight.bold,
                          //  color: Colors.blue,
                         //   letterSpacing: 4,
                         // ),
                       // ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'To win the match your score should be 32',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                              ' 1st Player:$s1',
                            style: TextStyle(

                              fontSize: 20,
                            ),
                          ),
                        ),

                        Expanded(
                          child: Text(
                            '2nd Player:$s2',
                            style: TextStyle(

                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '3rd Player:$s3',
                            style: TextStyle(

                              fontSize: 20,
                            ),
                          ),
                        ),


                        Expanded(
                          child: Text(
                            '4th Player:$s4',
                            style: TextStyle(

                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              ),
              ),
            
          ],
        );

  }
  void _shownotice(BuildContext context)
  {
    var alertDialog = AlertDialog(
      title: Text('Congratulation'),
      content: Text('You win the match.'),
    );
    showDialog(context: context ,
        builder: (BuildContext context)
    {
      return alertDialog;
    }
    );
  }
}
