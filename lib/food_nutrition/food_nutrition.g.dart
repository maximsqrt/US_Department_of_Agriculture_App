// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodNutrition _$FoodNutritionFromJson(Map<String, dynamic> json) =>
    FoodNutrition(
      number: json['number'] as String?,
      name: json['name'] as String?,
      amount: json['amount'] as int?,
      unitName: json['unitName'] as String?,
      derivationCode: json['derivationCode'] as String?,
      derivationDescription: json['derivationDescription'] as String?,
    );

Map<String, dynamic> _$FoodNutritionToJson(FoodNutrition instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'amount': instance.amount,
      'unitName': instance.unitName,
      'derivationCode': instance.derivationCode,
      'derivationDescription': instance.derivationDescription,
    };
