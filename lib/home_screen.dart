import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moulvibazar_app/bank.dart';
import 'package:moulvibazar_app/bus_station.dart';
import 'package:moulvibazar_app/education.dart';
import 'package:moulvibazar_app/fire_service.dart';
import 'package:moulvibazar_app/hospital_screen.dart';
import 'package:moulvibazar_app/hotel.dart';
import 'package:moulvibazar_app/police_station.dart';
import 'package:moulvibazar_app/railway_station.dart';
import 'package:moulvibazar_app/tourist_screen.dart';





List<String> imageItem = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtT3MnhmjRTCir6d5RdrurpO2Cj3CJW07VQ3GA6kohVc-MBpjJ6xhvJIpjC4N0Yom0PmE&usqp=CAU',
 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzpkAy2YtJWGJLe1c-42jQX94zo-ojR5glcQ&s',
  'https://media.gettyimages.com/id/1471836731/photo/humhum-falls.jpg?s=612x612&w=gi&k=20&c=b40xmXH4xWDroPz4p2r6a-xEESx1N5-YHy2BqSG5FeQ=',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaHW8d83LR2XZyJCW9NvugZuLJWka8I0V_TQ&s',

];
final List<Map<String, dynamic>> gridItems = [
  {'logo': 'https://i.pinimg.com/736x/17/79/a8/1779a8d32ef8e3117c70221dce7843e3.jpg', 'text': 'Tourist'},
  {'logo': 'https://seeklogo.com/images/M/medical-hospital-logo-463FA27180-seeklogo.com.png', 'text': 'Hospital'},
  {'logo': 'https://img.freepik.com/free-vector/city-fire-department-organization-realistic-logo_1284-11977.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1724976000&semt=ais_hybrid', 'text': 'Fire Service'},
  {'logo': 'https://img.freepik.com/premium-vector/hotel-logo-vector-art-3_554682-2789.jpg', 'text': 'Hotel'},
  {'logo': 'https://us.123rf.com/450wm/cookamoto/cookamoto1609/cookamoto160900092/64323252-outdoor-exterior-view-on-police-station-building-municipal-structure-for-assistance-and-man-with.jpg?ver=6', 'text': 'Police Station'},
  {'logo': 'https://img.freepik.com/free-vector/railway-station-illustration_1284-6953.jpg', 'text': 'Railway Station'},
  {'logo': 'https://www.shutterstock.com/image-vector/bus-station-vector-flat-background-600nw-329706482.jpg', 'text': 'Bus Station'},

  {'logo': 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/education-logo-design%2C-education-template-0fe05c5afc560bb6f9712808c190da1f_screen.jpg?ts=1664854478', 'text': 'Education'},
  {'logo': 'https://img.freepik.com/free-vector/bank-finance-infographic-template_23-2149732179.jpg', 'text': 'Bank'},
];





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