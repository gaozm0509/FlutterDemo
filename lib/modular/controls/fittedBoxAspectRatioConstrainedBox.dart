/*
 * @Author: 农村高富帅
 * @LastEditors: 农村高富帅
 * @Description: 
 * @Email: gaozemin0509@gmail.com
 * @Date: 2019-06-04 12:34:16
 * @LastEditTime: 2019-06-04 16:33:58
 */

import 'package:flutter/material.dart';

class FittedBoxAspectRatioConstrainedBox extends StatefulWidget {
  @override
  _FittedBoxAspectRatioConstrainedBoxState createState() {
    return _FittedBoxAspectRatioConstrainedBoxState();
  }
}

class _FittedBoxAspectRatioConstrainedBoxState
    extends State<FittedBoxAspectRatioConstrainedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox AspectRatio ConstrainedBox'),
      ),
      body: Column(
        children: <Widget>[
          Text('FittedBox'),
          Container(
            width: 200,
            height: 100,
            color: Colors.pink,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100,
                height: 200,
                color: Colors.teal,
              ),
            ),
          ),
          Text('AspectRatio'),
          Container(
            width: 200,
            child: AspectRatio(
              aspectRatio: 2, //和宽度的比率，决定高度
              child: Container(
                color: Colors.teal,
              ),
            ),
          ),
          Text('ConstrainedBox'),
          Container(
            color: Colors.pink,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200,
                minWidth: 200,
                maxHeight: 300,
                maxWidth: 250,
              ),
              child: Container(
                // 这里设置的快和高都超出了外面设置的最大值和最小值，所以取外面的值
                width: 10, 
                height: 500,
                color: Colors.pink,
              ),
            ),
          )
        ],
      ),
    );
  }
}
