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
import '../bluetoothPage/bluetoothPage.dart';

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
    super.initState();
    _controller = new TabController(length: pageList.length, vsync: this);
  }


  static var pageList = [new ControlsList(),new NewsList(),new BluetoothPage(),];
  static List<String> titles = ['控件','新闻','蓝牙',];
  static List<Widget> tabs = [];
  void createTabs() {
    for (var i = 0; i < pageList.length; i++) {
      Tab tab = Tab(text: titles[i],icon: new Icon(Icons.control_point,));
      tabs.add(tab);
    }
  }

  @override
  Widget build(BuildContext context) {
    createTabs();
    return MaterialApp(
      // title: '控件列表',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

      home: Scaffold(
        body: new TabBarView(
          controller: _controller,
          children: pageList,
        ),
        bottomNavigationBar: Material(
          color: Colors.pink,
          child: TabBar(
            controller: _controller,
            tabs: tabs,
          ),
        ),
      ),
    );
  }
}
