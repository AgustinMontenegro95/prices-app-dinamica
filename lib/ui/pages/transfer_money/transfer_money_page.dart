import 'package:cost_app_dinamica/domain/blocs/transfer_money/transfer_money_bloc.dart';
import 'package:cost_app_dinamica/ui/widgets/Loading.dart';
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
          loading: () => const Loading(),
          loaded: (transferMoneyModel) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Transferencia de dinero"),
              ),
              body: Column(
                children: [
                  Text(transferMoneyModel!.TRD_COSTO_MINIMO.toString()),
                  Text(transferMoneyModel.TRD_PORCENTAJE.toString()),
                  Text(transferMoneyModel.TRD_SC_1MAX.toString()),
                  Text(transferMoneyModel.TRD_SC_MES_MAX_CANT.toString()),
                  Text(transferMoneyModel.TRD_SC_MES_MAX_IMPO.toString()),
                  Text(transferMoneyModel.TRE_COSTO_MINIMO.toString()),
                  Text(transferMoneyModel.TRE_PORCENTAJE.toString()),
                  Text(transferMoneyModel.TRE_SC_1MAX.toString()),
                  Text(transferMoneyModel.TRE_SC_MES_MAX_CANT.toString()),
                  Text(transferMoneyModel.TRE_SC_MES_MAX_IMPO.toString()),
                ],
              ),
            );
          },
          orElse: () => const Loading(),
        );
      },
    );
  }
}
