import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../bluetooth/bluetoothManager.dart';

class BluetoothPage extends StatefulWidget {
  @override
  _BluetoothPageState createState() {
    return _BluetoothPageState();
  }
}



class _BluetoothPageState extends State<BluetoothPage> {
  @override
  Widget build(BuildContext context) {
    return app;
  }
  static BluetoothManager  bluetoothManager = BluetoothManager();
  static void scanning() {
    bluetoothManager.scanning();
  }

  var app = MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ),
    home: homeScaffold
  );

  static var homeScaffold = Scaffold(
    appBar: AppBar(
      title: Text('蓝牙'),
    ),
    body: Column(
      children: <Widget>[
        MaterialButton(
          color: Colors.black,
          textColor: Colors.white,
          child: Text('扫描'),
          onPressed: (){
            scanning();
          },
        )
      ],
    ),
  );
}
