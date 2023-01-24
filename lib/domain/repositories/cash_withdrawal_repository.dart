import 'package:cost_app_dinamica/data/models/cash_withdrawal_model/cash_withdrawal_model.dart';

class CashWithdrawalRepository {
  Future<CashWithdrawalModel> getCashWithdrawal() async {
    CashWithdrawalModel cashWithdrawalModel;

    try {
      //solicitud a api

      //simulacion
      cashWithdrawalModel = CashWithdrawalModel.fromJson({
        "name": "Rapipago",
        "minExtractionAmount": 500.00,
        "minExtractionCommision": 100.00,
        "extractionCommisionPercent": 1.000,
        "maxExtractionAmount": 20000.000,
        "maxExtractionCommisionZero": 0.00,
        "maxExtractionCount": 0
      });

      return cashWithdrawalModel;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
