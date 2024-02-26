import 'package:flutter/material.dart';
import 'package:flutter_to_do/colors/colors.dart';

Widget searchBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(Icons.search, color: BlackColor),
        border: InputBorder.none,
        hintText: "Search",
        hintStyle: TextStyle(color: GreyColor),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 25,
          minHeight: 20,
        ),
      ),
    ),
  );
}
