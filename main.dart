import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text = "";
  Color _backgroundColor = Colors.white;

  void _addText() {
    setState(() {
      _text = "Hello World!";
    });
  }

  void _removeText() {
    setState(() {
      _text = "";
    });
  }

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _backgroundColor == Colors.white ? Colors.blueAccent : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(title: Text("My App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _text,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addText,
                child: Text("Add text"),
              ),
              ElevatedButton(
                onPressed: _removeText,
                child: Text("Delete text"),
              ),
              ElevatedButton(
                onPressed: _changeBackgroundColor,
                child: Text("Change Background Color"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
