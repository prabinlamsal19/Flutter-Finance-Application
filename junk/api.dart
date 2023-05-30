import 'package:http/http.dart' as http;
import 'dart:convert'; //to convert json data
import 'Models/UserModel.dart';

Future<void> getUser() async {
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users");

  //get
  var response = await http.get(url);
  if (response.statusCode == 200) {
    //decoding the json data
    var a = json.decode(response.body);
    var res = a[1];
    UserModel user = UserModel.fromMap(res);
    int id = user.id;
    String name = user.name;
    String email = user.email;
    print("id is $id , name is $name and email is $email for user 2");
  } else {
    print("The user couldnot be found");
  }
}

Future<void> asd() async {
  Uri url = Uri.parse("");
  final http.Response response = await http.put(url);
  //updating
}
