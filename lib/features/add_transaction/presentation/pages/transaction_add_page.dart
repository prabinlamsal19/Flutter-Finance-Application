import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';
import 'package:personal_finance/features/add_transaction/data/models/transaction_model.dart';
import 'package:personal_finance/features/statistics/data/models/chart_model.dart';
import 'package:personal_finance/features/statistics/presentation/bloc/chart_bloc.dart';
import 'package:personal_finance/features/statistics/presentation/pages/Statistics.dart';

import '../bloc/transaction_bloc.dart';

class TransactionAddPage extends StatefulWidget {
  const TransactionAddPage({super.key});
  // Function(String value) taskAdded;
  @override
  State<TransactionAddPage> createState() => _TransactionAddPageState();
}

class _TransactionAddPageState extends State<TransactionAddPage> {
  final formKey = GlobalKey<FormState>();

  var transactionCardList = [];
  final controller = TextEditingController();
  String? transactionType;
  DateTime? date;
  double? amount;
  String? note;
  String? paymentMethod;
  String? description;
  bool? incomeEnabled, expenseEnabled, transferEnabled;
  bool? accountEnabled, cardEnabled, cashEnabled;
  PieChartScreen pieChartScreen = PieChartScreen();

  @override
  Widget build(BuildContext context) {
    return FastForm(formKey: formKey, children: [
      FastChoiceChips(
        name: "name of chips",
        onSaved: (newValue) => transactionType = newValue![0],
        chips: [
          FastChoiceChip(
            value: "Income",
            elevation: 2,
            enabled: incomeEnabled ?? true,
            onSelected: (value) => {
              if (value == true)
                setState(() {
                  expenseEnabled = !value;
                  transferEnabled = !value;
                })
            },
          ),
          FastChoiceChip(
            value: "Expense",
            elevation: 2,
            enabled: expenseEnabled ?? true,
            onSelected: (value) => {
              // if (value == true)
              setState(() {
                incomeEnabled = !value;
                transferEnabled = !value;
              })
            },
          ),
          FastChoiceChip(
            value: "Transfer",
            elevation: 2,
            enabled: transferEnabled ?? true,
            onSelected: (value) => {
              // if (value == true)
              setState(() {
                expenseEnabled = !value;
                incomeEnabled = !value;
              })
            },
          )
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      FastTextField(
        name: "Amount",
        keyboardType: TextInputType.number,
        onSaved: (newValue) {
          setState(() {
            amount = double.parse(newValue ?? "0");
          });
          //when saved, the new value of name will be added to the list.
        },
        labelText: 'Enter the amount',
      ),
      const SizedBox(
        height: 20,
      ),
      FastTextField(
        name: "Category",
        keyboardType: TextInputType.text,
        onSaved: (newValue) {
          note = newValue ?? "";
          //when saved, the new value of name will be added to the list.
        },
        labelText: 'Enter the note',
      ),
      const SizedBox(
        height: 20,
      ),
      FastChoiceChips(
        name: "Accounts",
        onSaved: (newValue) {
          paymentMethod = newValue![0];
          //when saved, the new value of name will be added to the list.
        },
        chips: [
          FastChoiceChip(
            value: "Accounts",
            elevation: 2,
            enabled: accountEnabled ?? true,
            onSelected: (value) => {
              // if (value == true)
              setState(() {
                cardEnabled = !value;
                cashEnabled = !value;
              })
            },
          ),
          FastChoiceChip(
            value: "Cards",
            elevation: 2,
            enabled: cardEnabled ?? true,
            onSelected: (value) => {
              // if (value == true)
              setState(() {
                accountEnabled = !value;
                cashEnabled = !value;
              })
            },
          ),
          FastChoiceChip(
            value: "Cash",
            elevation: 2,
            enabled: cashEnabled ?? true,
            onSelected: (value) => {
              // if (value == true)
              setState(() {
                accountEnabled = !value;
                cardEnabled = !value;
              })
            },
          )
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      FastTextField(
        name: "Desciption",
        keyboardType: TextInputType.multiline,
        onSaved: (newValue) {
          description = newValue ?? "";
          //when saved, the new value of name will be added to the list.
        },
        labelText: 'Enter the Description',
      ),
      const SizedBox(
        height: 20,
      ),
      ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pop();
            Navigator.pop(context);
            if (formKey.currentState!.validate()) {
              //handle vallidation logic later
              formKey.currentState!.save();
              BlocProvider.of<TransactionBloc>(context).add(
                  TransactionAddedEvent(
                      transactionCard: TransactionModel(
                          paymentMethod: paymentMethod ?? "Other",
                          transactionType: transactionType ?? "Income",
                          note: note ?? "",
                          description: description ?? "",
                          amount: amount ?? 0,
                          date: DateTime(2000)))); //fill in the details
              showDialog(
                  context: context,
                  builder: (context) {
                    // BlocProvider.of<ChartBloc>(context).add(AddChartEvent(
                    //     pieData: PieChartData(
                    //         category: transactionType ?? "None",
                    //         value: amount ?? 0)));
                    BlocProvider.of<ChartBloc>(context).add(ChartLoadEvent());
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.of(context).pop(); //removed true
                    });
                    return const AlertDialog(
                      content: Text('The transaction was added'),
                    );
                  });
            }
          },
          child: const Text("Submit")),
      const SizedBox(
        height: 10,
      ),
    ]);
  }
}
