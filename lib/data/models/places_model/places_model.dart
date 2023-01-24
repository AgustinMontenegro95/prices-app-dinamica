import 'package:cost_app_dinamica/data/models/deposit_money_model/deposit_money_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_model.freezed.dart';
part 'places_model.g.dart';

@Freezed()
class PlacesModelDM with _$PlacesModelDM {
  const factory PlacesModelDM({
    required List<DepositMoneyModel> places,
  }) = _PlacesModelDM;

  factory PlacesModelDM.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelDMFromJson(json);
}

@Freezed()
class PlacesModelCW with _$PlacesModelCW {
  const factory PlacesModelCW({
    required List<DepositMoneyModel> places,
  }) = _PlacesModelCW;

  factory PlacesModelCW.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelCWFromJson(json);
}

@Freezed()
class PlacesModelTM with _$PlacesModelTM {
  const factory PlacesModelTM({
    required List<DepositMoneyModel> places,
  }) = _PlacesModelTM;

  factory PlacesModelTM.fromJson(Map<String, dynamic> json) =>
      _$PlacesModelTMFromJson(json);
}
