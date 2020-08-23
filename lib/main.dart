import 'package:flutter/material.dart';

void main() {
  runApp(DogApp());
}

class DogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dog App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ItemCounter("Rocky"),
              ItemCounter("Tommy"),
              ItemCounter("Jimmy")
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCounter extends StatefulWidget {
  final String name;

  ItemCounter(this.name);
  @override
  ItemCounterState createState() => ItemCounterState();
}

class ItemCounterState extends State<ItemCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          count++;
        });
      },
      child:Text('${widget.name}:$count') ,
    );
    
     
  }
}
