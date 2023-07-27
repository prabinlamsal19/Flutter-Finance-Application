//for the rest stock api

import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 1)
class StockModel extends HiveObject {
  @HiveField(0)
  final DateTime dateTime;

  @HiveField(1)
  final double price;

  StockModel({
    required this.dateTime,
    required this.price,
  });
}
