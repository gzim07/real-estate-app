import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:real_estate_app/screens/details_screen.dart';
import 'package:real_estate_app/widgets/house_card.dart';

import '../models/item_model.dart';

class SuggestionList extends StatefulWidget {
  final String title;
  final List<Item> items;

  const SuggestionList({Key? key, required this.title, required this.items})
      : super(key: key);

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(onPressed: () {}, child: Text("See All"))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 340,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  return ItemCard(
                    item: widget.items[index],
                    ontap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailsScreen(widget.items[index]);
                      }));
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
