import 'package:flutter/material.dart';

class RoutineItem extends StatefulWidget {
  RoutineItem({Key key}) : super(key: key);

  @override
  _RoutineItemState createState() => _RoutineItemState();
}

class _RoutineItemState extends State<RoutineItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ListTile(
        leading: Text("08:00"),
        title: Text(
          "Tarefa tal",
          textAlign: TextAlign.center,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
