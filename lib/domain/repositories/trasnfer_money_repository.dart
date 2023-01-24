import 'package:cost_app_dinamica/data/models/transfer_money_model/transfer_money_model.dart';

class TransferMoneyRepository {
  Future<TransferMoneyModel> getTransferMoney() async {
    TransferMoneyModel transferMoneyModel;

    try {
      //solicitud a api

      //simulacion
      transferMoneyModel = TransferMoneyModel.fromJson({
        "trdSc1Max": 500.00,
        "trdScMesMaxImpo": 100.00,
        "trdScMesMaxCant": 3,
        "trdPorcentaje": 21.000,
        "trdCostoMinimo": 200.00,
        "treSc1Max": 500.00,
        "treScMesMaxImpo": 100.00,
        "treScMesMaxCant": 3,
        "trePorcentaje": 21.000,
        "treCostoMinimo": 200.00
      });

      return transferMoneyModel;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
