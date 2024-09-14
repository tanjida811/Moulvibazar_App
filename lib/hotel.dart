import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Hotel Page')
      ),
      body: Center(child: Text('This is Hotel Page')),
    );
  }

}