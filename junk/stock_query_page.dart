import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink(
      'https://api.finage.co.uk/graphql', // GraphQL endpoint URL
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
  late String graphQLQuery;

  final String symbols =
      'AAPL,TSLA,GOGL'; // Replace with the desired stock symbols separated by commas

  @override
  void initState() {
    super.initState();
    httpLink = HttpLink(
      'https://api.finage.co.uk/graphql', // GraphQL endpoint URL
    );
    client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink,
      ),
    );
    graphQLQuery = '''
      query {
        stockLastQuotes(symbols: "$symbols") {
          symbol
          ask
          bid
          asize
          bsize
          timestamp
        }
      }
    ''';
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

            final List<dynamic> stockQuotes = result.data!['stockLastQuotes'];

            return ListView.builder(
              itemCount: stockQuotes.length,
              itemBuilder: (context, index) {
                final stockQuote = stockQuotes[index];
                final symbol = stockQuote['symbol'];
                final ask = stockQuote['ask'];
                final bid = stockQuote['bid'];
                final asize = stockQuote['asize'];
                final bsize = stockQuote['bsize'];
                final timestamp = stockQuote['timestamp'];

                return ListTile(
                  title: Text('Symbol: $symbol'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ask: $ask'),
                      Text('Bid: $bid'),
                      Text('Ask Size: $asize'),
                      Text('Bid Size: $bsize'),
                      Text('Timestamp: $timestamp'),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
