import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:hive/hive.dart';

Future<Client> initClient() async {
  Hive.init('graphql_hive');
  final box = await Hive.openBox('graphql_auth_box');
  final link = HttpLink("https://f6ce-202-166-198-75.ngrok-free.app/graphql");

  final cache = Cache();

  final client = Client(link: link, cache: cache);
  return client;
}
