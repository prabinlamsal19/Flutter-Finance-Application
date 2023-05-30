import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final Dio dio = Dio();

void signUp() async {
  try {
    Response response = await dio.post(
      "http://localhost:8800/register",
      data: {
        "username": "Flutter-dev",
        "email": "user@flutter.com",
        "password": "flutteradsf",
      },
      options: Options(headers: {"Content-Type": "application/json"}),
    );
    print(response);
  } catch (e) {
    print("error catched::: $e.toString()");
  }
  return null;
}
