import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusStationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Bus Station Page')
      ),
      body: Center(child: Text('This is Bus Station Page')),
    );
  }

}