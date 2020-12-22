import 'package:flutter/material.dart';
import 'package:rotinas_app/Widget/RoutineItem.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var textColor = Color(0xff003844);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Minhas Rotinas",
          style: TextStyle(color: textColor),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 104,
        decoration: BoxDecoration(
          color: Color(0xffFFB100),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 2),
              blurRadius: 15,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              iconSize: 40,
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            Text("Rotinas"),
            CircleAvatar(
              backgroundColor: Color(0xffFFD167),
              radius: 40,
            ),
            Text("Nova Tarefa"),
            IconButton(
              iconSize: 40,
              icon: Icon(Icons.add_box),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          reverse: true,
          children: [
            RoutineItem(),
          ],
        ),
      ),
    );
  }
}
