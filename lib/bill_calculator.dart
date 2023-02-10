// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

int totalBill = 0;
int n = 1;
double tip = 0.0;

class BillCalculator extends StatefulWidget {
  const BillCalculator({super.key});

  @override
  State<BillCalculator> createState() => _BillCalculatorState();
}

class _BillCalculatorState extends State<BillCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text( 'Bill Calculator', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'TOTAL BILL PER HEAD',
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    '${ ( (totalBill * tip) /100 ) + totalBill/n} Rs',
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(hintText: 'Enter price',),
                      
                       onChanged: (valueRj) {
                        setState(() {
                          totalBill = int.parse(valueRj);
                        });
                      },
                      
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'split by ',
                            style: TextStyle(fontSize: 25),
                            
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (n > 1) {
                                    n--; //when n greater than 1 than iy can be less with back arrow but it will not go in minus
                                  }
                                });
                              },
                              icon: Icon(Icons.arrow_back_ios_new_rounded)),
                          Text(
                            '$n',
                            style: TextStyle(fontSize: 30),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  n++;
                                });
                              },
                              icon: Icon(Icons.arrow_forward_ios_outlined)),
                        ]),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text(
                        'TIP IS ${tip.toStringAsFixed(0)}',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Slider(
                      activeColor: Color.fromARGB(255, 230, 13, 13),
                      inactiveColor: Colors.white,
                        value: 100.0,
                        onChanged: (double d) {
                          setState(() {
                            tip = d;
                          }
                          );
                         
                        },
                         min:5,
                         max:100,
                        divisions: 10,
                        )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
