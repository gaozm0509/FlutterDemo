/*
 * @Author: 农村高富帅
 * @LastEditors: 农村高富帅
 * @Description: 
 * @Email: gaozemin0509@gmail.com
 * @Date: 2019-06-04 11:40:22
 * @LastEditTime: 2019-06-04 12:16:36
 */

import 'package:flutter/material.dart';

class PaddingAlignCenter extends StatefulWidget {
  @override
  _PaddingAlignCenterState createState() {
    return _PaddingAlignCenterState();
  }
}

class _PaddingAlignCenterState extends State<PaddingAlignCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Align Center'),
      ),
      body: Column(
        children: <Widget>[
          // Padding
          Text('Padding'),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.pink),
            ),
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
            ),
          ),

          Text('Align'),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.pink),
            ),
            child: Align(
              //Aligin会根据factor属性，扩展自己的尺寸，例如设置widthFactor为1.0的时候,Align的宽度将会是child的1倍
              alignment: Alignment(200, 30),
              widthFactor: 2,
              heightFactor: 1.5,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
            ),
          ),

          Text('Center'),
          // Center继承自Align，只不过是将alignment设置为Alignment.center，其他属性例如widthFactor、heightFactor，布局行为，都与Align完全一样，在这里就不再单独做介绍了。Center源码如下，没有设置alignment属性，是因为Align默认的对齐方式就是居中。
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.pink),
            ),
            child: Center(
              widthFactor: 1.0,
              heightFactor: 2.0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
