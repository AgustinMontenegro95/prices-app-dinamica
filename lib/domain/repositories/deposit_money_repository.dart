import 'package:cost_app_dinamica/data/models/places_model/places_model.dart';

class DepositMoneyRepository {
  Future<PlacesModelDM> getDepositMoney() async {
    PlacesModelDM placesModelDM;

    try {
      //solicitud a api

      //simulacion
      placesModelDM = PlacesModelDM.fromJson({
        "places": [
          {
            "name": "PagoFacil",
            "minDepositAmount": 500.00,
            "maxDepositAmount": 100000.00,
            "minDepositCommision": 0.00,
            "depositCommisionPercent": 0.000,
            "maxDepositCommisionZero": 25000.00,
            "maxDepositCount": 0
          },
          {
            "name": "Rapipago",
            "minDepositAmount": 700.00,
            "maxDepositAmount": 150000.00,
            "minDepositCommision": 0.00,
            "depositCommisionPercent": 0.000,
            "maxDepositCommisionZero": 27000.00,
            "maxDepositCount": 3
          },
          {
            "name": "Dinamica",
            "minDepositAmount": 700.00,
            "maxDepositAmount": 150000.00,
            "minDepositCommision": 0.00,
            "depositCommisionPercent": 0.000,
            "maxDepositCommisionZero": 27000.00,
            "maxDepositCount": 3
          },
          {
            "name": "Pago Mis Cuentas",
            "minDepositAmount": 700.00,
            "maxDepositAmount": 150000.00,
            "minDepositCommision": 0.00,
            "depositCommisionPercent": 0.000,
            "maxDepositCommisionZero": 27000.00,
            "maxDepositCount": 3
          }
        ]
      });
      print(placesModelDM);
      print(placesModelDM.places);

      return placesModelDM;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
