//for the rest graphql api
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/stock_model.dart';

final Dio dio = Dio();

Future<void> fetchStocks() async {
  try {
    final response = await dio.get(
      'https://www.alphavantage.co/query',
      queryParameters: {
        'function': 'TIME_SERIES_INTRADAY',
        'symbol': 'IBM',
        'interval': '5min',
        'apikey': 'demo',
      },
    );
    if (response.statusCode == 200) {
      final responseData = response.data as Map<String, dynamic>;
      final timeSeriesData =
          responseData['Time Series (5min)'] as Map<String, dynamic>;

      final stocks = timeSeriesData.entries.map((entry) {
        final dateTime = DateTime.parse(entry.key);
        final price = double.parse(entry.value['4. close']);

        return StockModel(dateTime: dateTime, price: price);
      }).toList();

      Hive.box<StockModel>('stocks').addAll(stocks);
    } else {
      print('API request failed with status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

void addStock() async {
  const symbol = 'AAPL'; // Example symbol

  try {
    final response = await dio.get(
      'https://www.alphavantage.co/query',
      queryParameters: {
        'function': 'GLOBAL_QUOTE',
        'symbol': symbol,
        'apikey': 'demo',
      },
    );

    if (response.statusCode == 200) {
      final responseData = response.data as Map<String, dynamic>;
      final globalQuoteData =
          responseData['Global Quote'] as Map<String, dynamic>;
      final price = double.parse(globalQuoteData['05. price']);

      final stock = StockModel(dateTime: DateTime.now(), price: price);
      Hive.box<StockModel>('stocks').add(stock);
    } else {
      print('API request failed with status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
