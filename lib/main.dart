import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font Size Changer',
      home: FontSizeChanger(),
    );
  }
}

class FontSizeChanger extends StatefulWidget {
  @override
  _FontSizeChangerState createState() => _FontSizeChangerState();
}

class _FontSizeChangerState extends State<FontSizeChanger> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(
      fontSize: 0 + _count.toDouble(),
      color: _count < 0 ? Colors.red : Colors.green,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Font Size: ${0 + _count}',
              style: _textStyle,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCount,
                  child: Text('Increase'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _decrementCount,
                  child: Text('Decrease'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
