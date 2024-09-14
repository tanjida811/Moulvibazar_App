import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Education Page')
      ),
      body: Center(child: Text('This is Education Page')),
    );
  }

}