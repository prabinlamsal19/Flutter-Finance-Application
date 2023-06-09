import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_finance/add_transaction/presentation/pages/transaction_add_page.dart';
import 'package:personal_finance/config/routes/routes_imports.gr.dart';
import 'package:personal_finance/notes/presentation/pages/notes_screen.dart';
import 'package:personal_finance/profile/presentation/widgets/splash_screen.dart';
import '../bloc/transaction_bloc.dart';
import '../widgets/transaction_card.dart';

@RoutePage()
class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TransactionBloc, TransactionState>(
        builder: (context, state) {
          if (state is TransactionInitialState) {
            print("Control comes to initial state");
            BlocProvider.of<TransactionBloc>(context)
                .add(TransactionLoadEvent());
            return const Center(child: Text("Please add transactions"));
          } else if (state is TransactionAddedState) {
            final transactionCardList = state.transactionCardList;
            return ListView.builder(
              itemCount: transactionCardList.length,
              itemBuilder: (context, index) {
                return TransactionCard(cardModel: transactionCardList[index]);
              },
            );
          } else {
            return const Center(child: Text("Please add transactions"));
          }
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: ((BuildContext context) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: const Icon(Icons.keyboard_arrow_down),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Add yourTransactionCard"),
                        const SizedBox(
                          height: 20,
                        ),
                        const TransactionAddPage(),
                      ],
                    ),
                  );
                }),
              );
            },
            tooltip: 'Add task',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NotesScreen()));
              // AutoRouter.of(context).push(const NotesScreenRoute());
            },
            tooltip: 'Add notes',
            child: const Icon(Icons.notes),
          ),
        ],
      ),
    );
  }
}
