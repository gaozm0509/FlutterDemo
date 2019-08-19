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
import 'package:ovprogresshud/progresshud.dart';

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
  ) {
    // Response response;
    Dio dio = new Dio();
    dio.options.baseUrl = Api.host;
    switch (method) {
      case RequestMethod.GET:
        Progresshud.show();
        return dio.get(url, queryParameters: params).then((response) {
          Progresshud.dismiss();
          print(response.data.toString());
          if (response.statusCode == 200) {
            return response.data.toString();
          } else {
            return response.statusMessage;
          }
        }).catchError((error) {
          print(error);
        });
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
