import 'package:dio/dio.dart';

final Dio dio = Dio();

Future<Response?> login() async {
  try {
    var response = await dio.post(
      "<localhose url here for login> ",
      data: {"email": "user@email.com", "password": "1234"},
    );
    print(response.data);
    return response;
  } catch (e) {
    print(e.toString());
  }
  return null;
}
