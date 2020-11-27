import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterTests/separator.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.amber,
                child: IntrinsicHeight(
                  child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt_sharp, size: 50),
                              Text("TITOLO / LUOGO")
                            ],
                          ),
                          Separator().buildLongSeparator(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("COMUNE - LOCALITA"),
                            ],
                          ),
                          Separator().buildSeparatorNull(),
                          Text("INDIRIZZO"),
                          Separator().buildLongSeparator(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("COORDINATE"),
                              Text("latitudine-longitudine"),
                            ],
                          ),
                          Separator().buildSeparatorNull(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.map_sharp, size: 50),
                              Icon(Icons.share_sharp, size: 50)
                            ],
                          ),
                        ],
                      )),
                ))));
  }
}
