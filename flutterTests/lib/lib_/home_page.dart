import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/services.dart';
import 'package:instagram_share/instagram_share.dart';

class SimpleShareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        showPerformanceOverlay: false,
        title: 'Simple Share App',
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('File Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Share.text(
                    'my text title',
                    'This is my text to share with other applications.',
                    'text/plain');
              },
              child: Text('Share text!'),
            ),
            RaisedButton(
              onPressed: () async {
                final ByteData bytes =
                    await rootBundle.load('assets/prova.jpg');
                await Share.file('esys image', 'esys.png',
                    bytes.buffer.asUint8List(), 'image/jpg',
                    text: 'My optional text.');
              },
              child: Text('Share file!'),
            ),
          ],
        ),
      ),
    );
  }
}
