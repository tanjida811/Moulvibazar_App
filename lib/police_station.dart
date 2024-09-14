import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PoliceStationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Police Station ')
      ),
      body: Center(child: Text('This is Police Station Page')),
    );
  }

}