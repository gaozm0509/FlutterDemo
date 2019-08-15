/*
 * @Author: 农村高富帅
 * @LastEditors: 农村高富帅
 * @Description: 
 * @Email: gaozemin0509@gmail.com
 * @Date: 2019-06-03 16:48:34
 * @LastEditTime: 2019-06-04 12:08:53
 */
import 'package:flutter/material.dart';

class ContainerDemo extends StatefulWidget {
  @override
  _ContainerDemoState createState() {
    return _ContainerDemoState();
  }
}

class _ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container'),
          // leading: Icon(Icons.backspace),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          // color: Colors.pink, 这里color和decoration冲突了，只能设置一个
          width: 200,
          height: 200,
          margin: EdgeInsets.only(left: 150),
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.pink),
              borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
              )),
          transform: new Matrix4.rotationZ(0.5),
          child: Text(
            '农村高富帅',
            style: TextStyle(color: Colors.pink, fontSize: 20),
          ),
        ),
      );
  }
}
