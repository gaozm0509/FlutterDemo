/*
 * @Author: 农村高富帅
 * @Date: 2019-06-17 15:38:56
 * @LastEditors: 农村高富帅
 * @LastEditTime: 2019-06-17 17:31:35
 * @Description: 
 * @Email: gaozemin0509@gmail.com
 */

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'api.dart';

enum RequestMethod {
  GET,
  POST,
  PUT,
  DELETE,
}

typedef void Success();
typedef void Failure();

class NetWork extends Object {
  request(
    String url,
    RequestMethod method,
    Map<String, dynamic> params,
  ) async {
    String _url = Api.host + url;
    Response response;
    Dio dio = new Dio();
    switch (method) {
      case RequestMethod.GET:
        response = await dio.get(_url, queryParameters: params);
        if (response.statusCode == 200) {
          return response.data.toString();
        } else {
          return response.statusMessage;
        }

        break;
      case RequestMethod.POST:
        break;
      case RequestMethod.DELETE:
        break;
      case RequestMethod.PUT:
        break;
      default:
    }
  }
}
