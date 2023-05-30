import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mocktail/mocktail.dart';

class Stock {
  final String symbol;
  final double ask;
  final double bid;
  final int askSize;
  final int bidSize;
  final int timestamp;

  Stock({
    required this.symbol,
    required this.ask,
    required this.bid,
    required this.askSize,
    required this.bidSize,
    required this.timestamp,
  });
}

class MockStockApi extends Mock implements GraphQLClient {}

class StockDataProvider {
  late MockStockApi client;

  StockDataProvider({MockStockApi? client}) {
    this.client = client ?? MockStockApi();
  }

  Future<List<Stock>> getStockData() async {
    const query = r'''
      query {
        stockData {
          symbol
          ask
          bid
          askSize
          bidSize
          timestamp
        }
      }
    ''';

    final result = await client.query(QueryOptions(document: gql(query)));

    if (result.exception != null) {
      throw Exception('Failed to fetch stock data');
    }

    final stocks = (result.data?['stockData'] as List<dynamic>)
        .map((data) => Stock(
              symbol: data['symbol'],
              ask: data['ask'],
              bid: data['bid'],
              askSize: data['askSize'],
              bidSize: data['bidSize'],
              timestamp: data['timestamp'],
            ))
        .toList();

    return stocks;
  }
}

class MyApp extends StatelessWidget {
  final MockStockApi client = MockStockApi();
  final StockDataProvider dataProvider = StockDataProvider();

  MyApp() {
    dataProvider.client = client;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: dataProvider.getStockData(),
        builder: (BuildContext context, AsyncSnapshot<List<Stock>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Stock App'),
              ),
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Stock App'),
              ),
              body: Center(
                child: Text('Error: ${snapshot.error}'),
              ),
            );
          } else {
            final stocks = snapshot.data!;
            return StockPage(stocks: stocks);
          }
        },
      ),
    );
  }
}

class StockPage extends StatelessWidget {
  final List<Stock> stocks;

  const StockPage({Key? key, required this.stocks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock App'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: stocks.length,
        itemBuilder: (context, index) {
          final stock = stocks[index];

          return StockCard(stock: stock);
        },
      ),
    );
  }
}

class StockCard extends StatelessWidget {
  final Stock stock;

  const StockCard({Key? key, required this.stock}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              stock.symbol,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text('Ask: ${stock.ask}'),
            Text('Bid: ${stock.bid}'),
            Text('Ask Size: ${stock.askSize}'),
            Text('Bid Size: ${stock.bidSize}'),
            Text('Timestamp: ${stock.timestamp}'),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
