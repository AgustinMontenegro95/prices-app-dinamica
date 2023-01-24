import 'package:cost_app_dinamica/domain/blocs/cash_withdrawal/cash_withdrawal_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CashWithdrawalPage extends StatefulWidget {
  const CashWithdrawalPage({super.key});

  @override
  State<CashWithdrawalPage> createState() => _CashWithdrawalPageState();
}

class _CashWithdrawalPageState extends State<CashWithdrawalPage> {
  @override
  void initState() {
    context.read<CashWithdrawalBloc>().add(const CashWithdrawalEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CashWithdrawalBloc, CashWithdrawalState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const CircularProgressIndicator(),
          loading: () => const CircularProgressIndicator(),
          loaded: (placesModelCM) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Retiro de efectivo"),
              ),
              //body: Text(placesModelTM!.name),
            );
          },
          orElse: () => const CircularProgressIndicator(),
        );
      },
    );
  }
}
