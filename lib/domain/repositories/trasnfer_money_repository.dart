import 'package:cost_app_dinamica/data/models/places_model/places_model.dart';

class TransferMoneyRepository {
  Future<PlacesModelTM> getTransferMoney() async {
    PlacesModelTM placesModelTM;

    try {
      //solicitud a api

      //simulacion
      placesModelTM = PlacesModelTM.fromJson({
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

      return placesModelTM;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
