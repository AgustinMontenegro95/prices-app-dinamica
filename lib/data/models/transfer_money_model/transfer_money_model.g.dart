// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_money_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransferMoneyModel _$$_TransferMoneyModelFromJson(
        Map<String, dynamic> json) =>
    _$_TransferMoneyModel(
      trdSc1Max: (json['trdSc1Max'] as num).toDouble(),
      trdScMesMaxImpo: (json['trdScMesMaxImpo'] as num).toDouble(),
      trdScMesMaxCant: json['trdScMesMaxCant'] as int,
      trdPorcentaje: (json['trdPorcentaje'] as num).toDouble(),
      trdCostoMinimo: (json['trdCostoMinimo'] as num).toDouble(),
      treSc1Max: (json['treSc1Max'] as num).toDouble(),
      treScMesMaxImpo: (json['treScMesMaxImpo'] as num).toDouble(),
      treScMesMaxCant: json['treScMesMaxCant'] as int,
      trePorcentaje: (json['trePorcentaje'] as num).toDouble(),
      treCostoMinimo: (json['treCostoMinimo'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TransferMoneyModelToJson(
        _$_TransferMoneyModel instance) =>
    <String, dynamic>{
      'trdSc1Max': instance.trdSc1Max,
      'trdScMesMaxImpo': instance.trdScMesMaxImpo,
      'trdScMesMaxCant': instance.trdScMesMaxCant,
      'trdPorcentaje': instance.trdPorcentaje,
      'trdCostoMinimo': instance.trdCostoMinimo,
      'treSc1Max': instance.treSc1Max,
      'treScMesMaxImpo': instance.treScMesMaxImpo,
      'treScMesMaxCant': instance.treScMesMaxCant,
      'trePorcentaje': instance.trePorcentaje,
      'treCostoMinimo': instance.treCostoMinimo,
    };
