import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BmiResult extends StatelessWidget {
  final double result;
  const BmiResult({super.key, required this.result});

  String getNormality (double result){
    if (result < 18.5) {
      return 'Underweight';
    } else if (result <= 24.9) {
      return 'Normal weight';
    } else if (result <= 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    final String normality = getNormality(result);
    return Scaffold(
      backgroundColor: HexColor('#352636'),
      appBar: AppBar(
        backgroundColor: HexColor('#352636'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text('Your BMI Result:',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,),),

              SizedBox(height: 10.0,),

              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: HexColor('#D8A3FF'),),

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text(normality,
                     style: TextStyle(
                       fontSize: 30.0,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,),
                   ),
                   SizedBox(
                     height: 30.0,
                   ),

                   Text('${result.round()}',
                     style: TextStyle(
                       fontSize: 100.0,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,),
                   ),
                 ],
               ),
              ),
            ],
          ),
      ),
    );
  }
}
