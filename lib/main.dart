// ignore_for_file: prefer_const_constructors

import 'package:bill_calculator/bill_calculator.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Bill Calculator',
      home: BillCalculator(),
    
    );
  }
}