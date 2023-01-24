import 'package:cost_app_dinamica/domain/blocs/transfer_money/transfer_money_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransferMoneyPage extends StatefulWidget {
  const TransferMoneyPage({super.key});

  @override
  State<TransferMoneyPage> createState() => _TransferMoneyPageState();
}

class _TransferMoneyPageState extends State<TransferMoneyPage> {
  @override
  void initState() {
    context.read<TransferMoneyBloc>().add(const TransferMoneyEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransferMoneyBloc, TransferMoneyState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const Text("initial"),
          loading: () => const Text("loading"),
          loaded: (placesModelTM) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Transferencia de dinero"),
              ),
              //body: Text(placesModelTM!.trdPorcentaje.toString()),
            );
          },
          orElse: () => const CircularProgressIndicator(),
        );
      },
    );
  }
}
