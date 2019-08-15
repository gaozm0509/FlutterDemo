/*
 * @Author: 农村高富帅
 * @Date: 2019-06-17 16:39:46
 * @LastEditors: 农村高富帅
 * @LastEditTime: 2019-06-17 17:33:52
 * @Description: 
 * @Email: gaozemin0509@gmail.com
 */

import 'package:flutter/material.dart';
import 'package:flutter_demo/netWork/netWork.dart';
import 'package:flutter_demo/netWork/api.dart';

class NewsList extends StatefulWidget {
  @override
  _NewsState createState() {
    return _NewsState();
  }
}

class _NewsState extends State<NewsList> {
  List _data = [];

  @override
  initState() {
    super.initState();
    this.request();
  }

  // 网络请求
  request() {
    Map<String, dynamic> params = {'type': 1, 'page': 20};
    var result = NetWork().request(Api.news, RequestMethod.GET, params);
    print('result====' + result);
  }

  itemClick(int index, BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: '控件列表',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('新闻列表'),
        ),
        body: ListView.builder(
          itemCount: _data.length,
          itemExtent: 60,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(_data[index]),
              onTap: () {
                itemClick(index, context);
              },
            );
          },
        ),
      ),
    );
  }
}
