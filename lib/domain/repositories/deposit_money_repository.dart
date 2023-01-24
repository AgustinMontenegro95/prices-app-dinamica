import 'package:cost_app_dinamica/data/models/deposit_money_model/deposit_money_model.dart';

class DepositMoneyRepository {
  Future<DepositMoneyModel> getDepositMoney() async {
    DepositMoneyModel depositMoneyModel;

    try {
      //solicitud a api

      //simulacion
      depositMoneyModel = DepositMoneyModel.fromJson({
        "name": "PagoFacil",
        "minDepositAmount": 500.00,
        "maxDepositAmount": 100000.00,
        "minDepositCommision": 0.00,
        "depositCommisionPercent": 0.000,
        "maxDepositCommisionZero": 25000.00,
        "maxDepositCount": 0
      });

      return depositMoneyModel;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
