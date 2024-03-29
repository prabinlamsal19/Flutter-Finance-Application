import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../data/models/stock_model.dart';
import '../../data/repositories/rest_stock_service.dart';

@RoutePage()
class StocksPage extends StatefulWidget {
  @override
  _StocksPageState createState() => _StocksPageState();
}

class _StocksPageState extends State<StocksPage> {
  @override
  void initState() {
    super.initState();
    fetchStocks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Stocks',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ValueListenableBuilder<Box<StockModel>>(
                valueListenable: Hive.box<StockModel>('stocks').listenable(),
                builder: (context, box, _) {
                  final stocks = box.values.toList();

                  if (stocks.isEmpty) {
                    return const Center(
                      child: Text(
                        'No stocks found.',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: stocks.length,
                    itemBuilder: (context, index) {
                      final stock = stocks[index];
                      return Card(
                        elevation: 2.0,
                        child: ListTile(
                          title: Text(
                            stock.dateTime.toString(),
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Price: \$${stock.price.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                addStock();
              },
              child: const Text('Add Stock'),
            ),
          ],
        ),
      ),
    );
  }
}

//generated by chatgpt
class StockModelAdapter extends TypeAdapter<StockModel> {
  @override
  final int typeId = 1;

  @override
  StockModel read(BinaryReader reader) {
    return StockModel(
      dateTime: DateTime.parse(reader.readString()),
      price: reader.readDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, StockModel obj) {
    writer.writeString(obj.dateTime.toIso8601String());
    writer.writeDouble(obj.price);
  }
}
