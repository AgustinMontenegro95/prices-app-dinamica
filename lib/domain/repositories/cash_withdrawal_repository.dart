import 'package:cost_app_dinamica/data/models/places_model/places_model.dart';

class CashWithdrawalRepository {
  Future<PlacesModelCW> getCashWithdrawal() async {
    PlacesModelCW placesModelCW;

    try {
      //solicitud a api

      //simulacion
      placesModelCW = PlacesModelCW.fromJson({
        "name": "Rapipago",
        "minExtractionAmount": 500.00,
        "minExtractionCommision": 100.00,
        "extractionCommisionPercent": 1.000,
        "maxExtractionAmount": 20000.000,
        "maxExtractionCommisionZero": 0.00,
        "maxExtractionCount": 0
      });

      return placesModelCW;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
