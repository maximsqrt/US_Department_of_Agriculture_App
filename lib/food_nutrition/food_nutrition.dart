import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food_nutrition.g.dart';

@JsonSerializable()
class FoodNutrition {
  String? number;
  String? name;
  int? amount;
  String? unitName;
  String? derivationCode;
  String? derivationDescription;

  FoodNutrition({
    this.number,
    this.name,
    this.amount,
    this.unitName,
    this.derivationCode,
    this.derivationDescription,
  });

  @override
  String toString() {
    return 'FoodNutrition(number: $number, name: $name, amount: $amount, unitName: $unitName, derivationCode: $derivationCode, derivationDescription: $derivationDescription)';
  }

  factory FoodNutrition.fromJson(Map<String, dynamic> json) {
    return _$FoodNutritionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FoodNutritionToJson(this);

  FoodNutrition copyWith({
    String? number,
    String? name,
    int? amount,
    String? unitName,
    String? derivationCode,
    String? derivationDescription,
  }) {
    return FoodNutrition(
      number: number ?? this.number,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      unitName: unitName ?? this.unitName,
      derivationCode: derivationCode ?? this.derivationCode,
      derivationDescription:
          derivationDescription ?? this.derivationDescription,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! FoodNutrition) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      number.hashCode ^
      name.hashCode ^
      amount.hashCode ^
      unitName.hashCode ^
      derivationCode.hashCode ^
      derivationDescription.hashCode;
}
