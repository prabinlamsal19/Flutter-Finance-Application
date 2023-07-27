import 'package:dio/dio.dart';

import '../models/user_model.dart';

Future<dynamic> signUp(UserModel user) async {
  String url = 'http://10.0.2.42:8800/api/auth/register';

  Map<String, dynamic> jsonData = {
    "username": user.username,
    "email": user.email,
    "password": user.password
  };

  try {
    Dio dio = Dio();

    Options options = Options(
      headers: {
        'Content-Type': 'application/json',
      },
    );

    final response = await dio.post(
      url,
      data: jsonData,
      options: options,
    );

    // Assuming the response body is already in JSON format, you can access the fields directly

    print(response.data['username']); // Username
  } catch (e) {
    print(e);
  }
}
