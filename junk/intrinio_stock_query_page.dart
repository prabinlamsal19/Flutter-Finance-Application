import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink(
      'https://api-v2.intrinio.com/securities/AAPL/prices?api_key={OmM2NmI1ZmI2NTZjZWNjN2I2YzRmMTVjYTYzNjhmOGU3}',
    );

    final ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink,
      ),
    );

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Stock Query App',
        home: StockQueryPage(),
      ),
    );
  }
}

class StockQueryPage extends StatefulWidget {
  @override
  _StockQueryPageState createState() => _StockQueryPageState();
}

class _StockQueryPageState extends State<StockQueryPage> {
  late HttpLink httpLink;
  late ValueNotifier<GraphQLClient> client;

  final String graphQLQuery = '''
    query {
      stockPrices(symbol: "AAPL", startDate: "2023-01-01", endDate: "2023-05-01") {
        date
        close
      }
    }
  ''';

  @override
  void initState() {
    super.initState();
    httpLink = HttpLink(
      'https://api-v2.intrinio.com/securities/AAPL/prices?api_key={OmM2NmI1ZmI2NTZjZWNjN2I2YzRmMTVjYTYzNjhmOGU3}',
    );
    client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Stock Page'),
        ),
        body: Query(
          options: QueryOptions(
            document: gql(graphQLQuery),
          ),
          builder: (QueryResult result, {refetch, fetchMore}) {
            if (result.hasException) {
              return Text('Error: ${result.exception.toString()}');
            }

            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            final List<dynamic> stockPrices = result.data!['stockPrices'];

            return ListView.builder(
              itemCount: stockPrices.length,
              itemBuilder: (context, index) {
                final stockPrice = stockPrices[index];
                final date = stockPrice['date'];
                final close = stockPrice['close'];

                return ListTile(
                  title: Text('Date: $date'),
                  subtitle: Text('Close: $close'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
