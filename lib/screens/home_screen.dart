// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/models/item_model.dart';
import 'package:real_estate_app/widgets/search_field.dart';
import 'package:real_estate_app/widgets/select_category.dart';
import 'package:real_estate_app/widgets/suggestions_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Row(children: [
          Icon(
            Icons.location_on,
            color: Colors.blue.shade600,
          ),
          Text(
            "Tokyo,Japan",
            style: TextStyle(color: Colors.black),
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.grey.shade600,
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SearchField(),
                SelectCategory(),
                SizedBox(
                  height: 20,
                ),
                SuggestionList(
                    title: "Recommendation for you",
                    items: Item.recommendation),
                SizedBox(
                  height: 20,
                ),
                SuggestionList(title: "Nearby you", items: Item.nearby)
              ],
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: ((index) {}),
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade600,
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: "Profile"),
        ],
      ),
    );
  }
}
