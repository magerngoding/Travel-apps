// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_apps/cubit/transaction_cubit.dart';

import 'package:travel_apps/shared/theme.dart';
import 'package:travel_apps/ui/pages/widget/transaction_card.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransaction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transactions.isEmpty) {
            return Center(
              child: Text('Kamu belum memiliki transaksi!'),
            );
          } else {
            return ListView.builder(
              itemCount: state.transactions.length,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              itemBuilder: (context, index) {
                return TransactionCard(
                  state.transactions[index],
                );
              },
            );
          }
        }
        return Center(
          child: Text('Transaction Page'),
        );
      },
    );
  }
}
