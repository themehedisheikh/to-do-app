import 'package:flutter/material.dart';
import 'package:flutter_to_do/colors/colors.dart';
import 'package:flutter_to_do/model/todo.dart';
import 'package:flutter_to_do/widgets/searchbox.dart';
import 'package:flutter_to_do/widgets/todolist.dart';

class home extends StatelessWidget {
  home({super.key});

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: WhiteColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                    "https://media.licdn.com/dms/image/D4D03AQHVcfbx31u39Q/profile-displayphoto-shrink_800_800/0/1675418353834?e=2147483647&v=beta&t=ZMijp1yyKUVjkLx7WlI2P1IczhFXpNxcNWjEUoPZMqo"),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 20),
                    child: Text(
                      "All Lists",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  for (ToDo todo in todosList) todolist(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
