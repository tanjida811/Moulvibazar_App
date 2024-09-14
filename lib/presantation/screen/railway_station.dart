import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RailwayStationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Railway Station ')
      ),
      body: Center(child: Text('This is Railway Station Page')),
    );
  }

}