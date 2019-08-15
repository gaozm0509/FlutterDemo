/*
 * @Author: 农村高富帅
 * @Date: 2019-06-17 16:50:50
 * @LastEditors: 农村高富帅
 * @LastEditTime: 2019-06-17 17:07:25
 * @Description: 
 * @Email: gaozemin0509@gmail.com
 */

import 'package:flutter/material.dart';
import 'package:flutter_demo/modular/controls/controlsList.dart';
import 'package:flutter_demo/modular/news/newsList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: '控件列表',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('控件列表'),
        // ),
        body: new TabBarView(
          controller: _controller,
          children: [
            new ControlsList(),
            new NewsList(),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.pink,
          child: TabBar(
            controller: _controller,
            tabs: <Widget>[
              Tab(
                text: "控件",
                icon: new Icon(
                  Icons.control_point,
                ),
              ),
              Tab(
                text: "新闻",
                icon: new Icon(
                  Icons.new_releases,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
