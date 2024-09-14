import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moulvibazar_app/presantation/data_list/home_data.dart';
import 'package:moulvibazar_app/presantation/screen/bank.dart';
import 'package:moulvibazar_app/presantation/screen/bus_station.dart';
import 'package:moulvibazar_app/presantation/screen/education.dart';
import 'package:moulvibazar_app/presantation/screen/fire_service.dart';
import 'package:moulvibazar_app/presantation/screen/hospital_screen.dart';
import 'package:moulvibazar_app/presantation/screen/hotel.dart';
import 'package:moulvibazar_app/presantation/screen/police_station.dart';
import 'package:moulvibazar_app/presantation/screen/railway_station.dart';
import 'package:moulvibazar_app/presantation/screen/tourist_screen.dart';







class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: IconButton(icon: Icon(Icons.menu), onPressed: () {  },),
       actions: [
         PopupMenuButton(icon: Icon(Icons.settings),
     onSelected: (value){
           if(value==1){

           } else if(value==2){

           }
     },

     itemBuilder: (context)=>[
            PopupMenuItem(
              value:1,
              child: ListTile(leading: Icon(Icons.login),
           title: Text('Sing in'),

           ),
           ),
           PopupMenuItem(
             value: 2,
             child: ListTile(leading: Icon(Icons.logout),
             title: Text('Log Out'),
           ),
           ),

         ],
         ),
       ],
     ),
    body:Column(
      children: [
        CarouselSlider(
          items: imageItem.map((item) =>Center(child: Image.network(item,fit:BoxFit.cover,width:900,height:200),)).toList(),
          options: CarouselOptions(
            autoPlay: true,
            //viewportFraction: 0.8,
            enlargeCenterPage: true,
            aspectRatio: 16/9,
          ),
        ),


        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 3,
              ),
              itemCount: gridItems.length,
              itemBuilder: (context, index) {
                final item = gridItems[index];

                return GestureDetector(
                  onTap: () {
                    if (item['text'] == 'Tourist') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TouristScreen()),
                      );
                    } else if (item['text'] == 'Hospital') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HospitalScreen()),
                      );
                    } else if (item['text'] == 'Fire Service') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FireServiceScreen()),
                      );
                    } else if (item['text'] == 'Hotel') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HotelScreen()),
                      );
                    } else if (item['text'] == 'Police Station') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PoliceStationScreen()),
                      );
                    } else if (item['text'] == 'Railway Station') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RailwayStationScreen()),
                      );
                    } else if (item['text'] == 'Bus Station') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BusStationScreen()),
                      );
                    } else if (item['text'] == 'Education') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EducationScreen()),
                      );
                    } else if (item['text'] == 'Bank') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BankScreen()),
                      );
                    }
                  },
                child:Card(
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          item['logo'],
                          width: 100,
                          height: 100,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(Icons.error, size: 80); // Show error icon if image fails to load
                          },
                        ),
                        SizedBox(height: 8),
                        Text(
                          item['text'],
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                ),
                );
              },
            ),
          ),
        )
      ],
    ),
   );
  }
}