import 'package:bloc/bloc.dart';
import 'package:cost_app_dinamica/data/models/cash_withdrawal_model/cash_withdrawal_model.dart';
import 'package:cost_app_dinamica/domain/repositories/cash_withdrawal_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cash_withdrawal_event.dart';
part 'cash_withdrawal_state.dart';
part 'cash_withdrawal_bloc.freezed.dart';

class CashWithdrawalBloc
    extends Bloc<CashWithdrawalEvent, CashWithdrawalState> {
  final CashWithdrawalRepository cashWithdrawalRepository;
  CashWithdrawalBloc({required this.cashWithdrawalRepository})
      : super(const _Initial()) {
    on<CashWithdrawalEvent>(_onCashWithdrawalEvent);
  }
  Future<void> _onCashWithdrawalEvent(
      CashWithdrawalEvent event, Emitter<CashWithdrawalState> emit) {
    return event.when(get: () async {
      emit(const _Loading());
      try {
        final cashWithdrawalModel =
            await cashWithdrawalRepository.getCashWithdrawal();
        emit(_Loaded(cashWithdrawalModel: cashWithdrawalModel));
      } catch (e) {
        debugPrint("error$e");
      }
    });
  }
}
