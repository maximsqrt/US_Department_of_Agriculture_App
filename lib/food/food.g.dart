// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
      fdcId: json['fdcId'] as int?,
      description: json['description'] as String?,
      dataType: json['dataType'] as String?,
      publicationDate: json['publicationDate'] as String?,
      foodNutrients: json['foodNutrients'] as List<FoodNutrition>?,
    );

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'fdcId': instance.fdcId,
      'description': instance.description,
      'dataType': instance.dataType,
      'publicationDate': instance.publicationDate,
      'foodNutrients': instance.foodNutrients,
    };
