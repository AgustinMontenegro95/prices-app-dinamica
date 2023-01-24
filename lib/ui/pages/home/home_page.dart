import 'package:cost_app_dinamica/domain/blocs/cash_withdrawal/cash_withdrawal_bloc.dart';
import 'package:cost_app_dinamica/domain/blocs/deposit_money/deposit_money_bloc.dart';
import 'package:cost_app_dinamica/domain/blocs/transfer_money/transfer_money_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Centro de ayuda de costos"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ingresar-dinero');
                  /* context
                      .read<DepositMoneyBloc>()
                      .add(const DepositMoneyEvent.get()); */
                },
                child: const Text("Ingresar dinero")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/retiro-efectivo');
                  /* context
                      .read<CashWithdrawalBloc>()
                      .add(const CashWithdrawalEvent.get()); */
                },
                child: const Text("Retiro efectivo")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/transferir-dinero');
                  /* context
                      .read<TransferMoneyBloc>()
                      .add(const TransferMoneyEvent.get()); */
                },
                child: const Text("Transferir dinero")),
          ],
        ),
      ),
    );
  }
}
