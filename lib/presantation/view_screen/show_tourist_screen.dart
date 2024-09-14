import 'package:flutter/material.dart';
import 'package:moulvibazar_app/presantation/data_list/tourist_data.dart';
import 'package:moulvibazar_app/presantation/screen/tourist_screen.dart';

class ShowTouristScreen extends StatelessWidget {
  final Map touristList; // Receive the tourist item as a parameter

  // Constructor to accept the tourist item
  const ShowTouristScreen({super.key, required this.touristList});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(touristList["name"]),
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>TouristScreen(),),);
        },),
      ),
      body:Column(
        children: [
          touristList['image'] != null && touristList["image"].isNotEmpty
          ?
          Image.network(touristList["image"],fit: BoxFit.cover,width: double.infinity,
          errorBuilder: (context, error, stackTrace){
            return Icon(Icons.error,
                size: 80,
                );
          },
          )
        :Icon(Icons.image_not_supported,
          size:80,),

        ],
      ) ,

    );
  }
}
