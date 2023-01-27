import 'dart:js_util';

import 'package:cost_app_dinamica/domain/blocs/cash_withdrawal/cash_withdrawal_bloc.dart';
import 'package:cost_app_dinamica/ui/widgets/Loading.dart';
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
          initial: () => const Text("Initial"),
          loading: () => const Loading(),
          loaded: (placesModelCM) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Retiro de efectivo"),
              ),
              body: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: placesModelCM!.places.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Text(placesModelCM.places[index].name),
                          Text(placesModelCM
                              .places[index].extractionCommisionPercent
                              .toString()),
                          Text(placesModelCM.places[index].maxExtractionAmount
                              .toString()),
                          Text(placesModelCM
                              .places[index].maxExtractionCommisionZero
                              .toString()),
                          Text(placesModelCM.places[index].maxExtractionCount
                              .toString()),
                          Text(placesModelCM.places[index].minExtractionAmount
                              .toString()),
                          Text(placesModelCM
                              .places[index].minExtractionCommision
                              .toString()),
                          const Divider()
                        ],
                      );
                    },
                  ),
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
