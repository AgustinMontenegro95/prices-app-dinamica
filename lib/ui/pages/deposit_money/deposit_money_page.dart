import 'package:cost_app_dinamica/domain/blocs/deposit_money/deposit_money_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepositMoneyPage extends StatefulWidget {
  const DepositMoneyPage({super.key});

  @override
  State<DepositMoneyPage> createState() => _DepositMoneyPageState();
}

class _DepositMoneyPageState extends State<DepositMoneyPage> {
  @override
  void initState() {
    context.read<DepositMoneyBloc>().add(const DepositMoneyEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DepositMoneyBloc, DepositMoneyState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const CircularProgressIndicator(),
          loading: () => const CircularProgressIndicator(),
          loaded: (depositMoney) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Retiro de efectivo"),
              ),
              body: Text(depositMoney!.name),
            );
          },
          orElse: () => const CircularProgressIndicator(),
        );
      },
    );
  }
}
