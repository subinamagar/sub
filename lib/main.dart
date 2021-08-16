import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increasenumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void reserNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: reserNumber,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            "score is",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            number.toString(),
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 140,
              fontWeight: FontWeight.bold,
            ),
          )),
          SizedBox(
            height: 25,
            width: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.red,
                child: Text(
                  'Increase',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: increasenumber,
              ),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: decreaseNumber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
