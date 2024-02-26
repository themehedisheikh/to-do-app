import 'package:flutter/material.dart';
import 'package:flutter_to_do/colors/colors.dart';
import 'package:flutter_to_do/model/todo.dart';

class todolist extends StatelessWidget {

    final ToDo todo;
  const todolist({super.key, required this.todo});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          tileColor: Colors.white,
          leading: Icon(
            Icons.check_box,
            color: BlueColor,
          ),
          title: Text(
            ToDo.todoText!,
            style: TextStyle(
                color: BlackColor, decoration: TextDecoration.lineThrough),
          ),
          trailing: Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: RedColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                color: Colors.white,
                iconSize: 18,
                icon: Icon(Icons.delete),
                onPressed: () {},
              ))),
    );
  }
}
