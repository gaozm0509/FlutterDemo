/*
 * @Author: 农村高富帅
 * @LastEditors: 农村高富帅
 * @Description: 
 * @Email: gaozemin0509@gmail.com
 * @Date: 2019-06-03 15:47:19
 * @LastEditTime: 2019-06-17 17:02:15
 */

import 'package:flutter/material.dart';
import 'containerDemo.dart';
import 'PaddingAlignCenter.dart';
import 'fittedBoxAspectRatioConstrainedBox.dart';

class ControlsList extends StatefulWidget {
  @override
  _ControlsListState createState() {
    return _ControlsListState();
  }
}

class _ControlsListState extends State<ControlsList> {
  List<String> _controls = [
    'Container',
    'Padding Align Center',
    'FittedBox AspectRatio ConstrainedBox',
    'Baseline FractionallySizedBox IntrinsicHeight IntrinsicWidth',
    'LimitedBox Offstage OverflowBox SizedBox',
    'SizedOverflowBox Transform CustomSingleChildLayout',
    'Row Column',
    'Stack IndexedStack GridView',
    'Flow Table Wrap',
    'ListBody ListView CustomMultiChildLayout',
  ];

  void itemClick(int index, BuildContext context) {
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ContainerDemo()));
    } else if (index == 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PaddingAlignCenter()));
    } else if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FittedBoxAspectRatioConstrainedBox()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('控件列表'),
      ),
      body: ListView.builder(
        itemCount: _controls.length,
        itemExtent: 60,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_controls[index]),
            onTap: () {
              itemClick(index, context);
            },
          );
        },
      ),
    );
  }
}
