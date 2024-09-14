import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moulvibazar_app/home_screen.dart';

import '../data_list/tourist_data.dart';
import '../view_screen/show_tourist_screen.dart';



class TouristScreen extends StatefulWidget {
  @override
  State<TouristScreen> createState() => _TouristScreenState();
}

class _TouristScreenState extends State<TouristScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(),),); // Corrected from 'Navigator.push'
          },
        ),
        title:/* _isSearching ?*/ TextField(
         // controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search Tourist Spots',
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
               /* setState(() {
                  _searchController.clear(); // Clear the search input
                  _filterTouristSpots(''); // Reset the search filter
                });*/
              },
            ),
          ),
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          //onChanged: _filterTouristSpots, // Filter results as user types
        ),
          //Center(child: Text('Tourist Spots'),),
        actions: [
          IconButton(
            icon: Icon(/*_isSearching ?*/ Icons.search),//Icons.search),
            onPressed: () {
             /*setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  _searchController.clear(); // Clear the search input when closing
                  _filterTouristSpots(''); // Reset the search filter when closing
                }
              });*/
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: touristList.length,
        itemBuilder: (context, index) {
          final item = touristList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowTouristScreen(
                   touristList: touristList[index],
                  ),
                ),
              );
            },
            child: Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: Image.network(
                        item['image'],
                        fit: BoxFit.cover, // Change as needed
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.error, size: 80);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            item['name'],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

