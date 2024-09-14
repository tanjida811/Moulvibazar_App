import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BankScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Bank Page')
      ),
      body: Center(child: Text('This is Bank Page')),
    );
  }

}