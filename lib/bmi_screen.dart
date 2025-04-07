
import 'dart:math';

import 'package:bmi_calculator/bmi_result.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

bool isMale= true;

bool isFemale= true;

double height =0.0;

double weight =0.0;
double age =0.0;



class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#352636'),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80.0,
        backgroundColor: HexColor('#352636'),

        title: Text('BMI CALCULATOR',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),

      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height:600.0,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isFemale = true;
                          });
                          print('female');
                        },
                        child: Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isFemale ? HexColor('#D8A3FF'):  Colors.grey,
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female, size: 100.0,
                              color: Colors.white,
                              ),

                              SizedBox(height: 10.0,),

                              Text('Female', style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),)
                            ],
                          ),

                        ),
                      ),), //female

                      SizedBox(width: 15.0,),

                      Expanded(child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isFemale = false;
                          });
                          print('male');
                        },
                        child: Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: !isFemale ? HexColor('#D8A3FF'):  Colors.grey,
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male, size: 100.0,
                                color: Colors.white,
                              ),

                              SizedBox(height: 10.0,),

                              Text('Male', style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,

                              ),)
                            ],
                          ),

                        ),
                      ),), //male
                    ],
                  ),
                ), //gender type containers

                SizedBox(height: 15.0,),

                Expanded(child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: HexColor('#D8A3FF'),),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Height',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline, //new alignment
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('${height.round()}', style: TextStyle(
                              fontSize: 60.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ), ),

                          Text('cm', style: TextStyle(
                              color: Colors.white,
                          ), ),

                        ],
                      ),

                      Slider(
                        value: height,
                        onChanged: (value){
                          setState(() {
                            height=value;
                          });
                        },
                        min: 0.0,
                        max: 200,
                        thumbColor: HexColor('#352636'),
                        activeColor: HexColor('#352636'),
                        inactiveColor: Colors.white,
                      ),
                    ],
                  ),
                ),), //height container

                SizedBox(height: 15.0,),

                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: HexColor('#D8A3FF'),),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Weight', style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                            ),


                            Text('${weight.round()}', style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight--',
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),

                                  child: Icon(Icons.remove,
                                    size: 50.0,
                                    color: HexColor('#D8A3FF'),),


                                ),

                                SizedBox(width: 20.0,),

                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight++',
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),

                                  child: Icon(Icons.add,
                                    size: 50.0,
                                    color: HexColor('#D8A3FF'),),


                                ),

                              ],

                              ),
                          ],
                        ),

                      ),), //weight container

                      SizedBox(width: 15.0,),

                      Expanded(child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: HexColor('#D8A3FF'),),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age', style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                            ),


                            Text('${age.round()}', style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    heroTag: 'age--',
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),

                                    child: Icon(Icons.remove,
                                      size: 50.0,
                                      color: HexColor('#D8A3FF'),),


                                  ),

                                  SizedBox(width: 20.0,),

                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'age++',
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),

                                    child: Icon(Icons.add,
                                      size: 50.0,
                                      color: HexColor('#D8A3FF'),),


                                  ),



                                ],
                              ),
                          ],
                        ),

                      ),), //age container
                    ],
                  ),
                ), //weight and age containers

                SizedBox(height: 15.0,),

                Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: HexColor('#D8A3FF'),
                    borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(10.0),
                      bottomEnd: Radius.circular(10.0),
                    )
                  ),


                  child: MaterialButton(onPressed: (){
                    var result = weight / pow(height/100, 2);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BmiResult(result: result,)));

                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BmiResult()));
                  },

                    child: Text('Calculate BMI',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white,

                  ),),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
