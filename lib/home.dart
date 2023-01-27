import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _color = Colors.red;
  var _width = 50.0;
  var _height = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 1500),
              color: _color,
              width: _width,
              height: _height,
              // child: Text('Hello World'),
            ),
            ElevatedButton(
                onPressed: () {
                  startAnime();
                },
                child: Text('Start')),
          ],
        ),
      ),
    );
  }

  void startAnime() {
    setState(() {
      _color == Colors.yellow ? _color = Colors.red : _color = Colors.yellow;
      _width == 50.0 ? _width = 100.0 : _width = 50.0;
      _height == 50.0 ? _height = 100.0 : _height = 50.0;
    });
  }
}
