import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kalorientracker/food_nutrition/food_nutrition.dart';

part 'food.g.dart';

@JsonSerializable()
class Food {
  final int? fdcId;
  final String? description;
  final String? dataType;
  final String? publicationDate;
  final List<FoodNutrition>? foodNutrients;

  const Food({
    this.fdcId,
    this.description,
    this.dataType,
    this.publicationDate,
    this.foodNutrients,
  });

  @override
  String toString() {
    return 'Food(fdcId: $fdcId, description: $description, dataType: $dataType, publicationDate: $publicationDate, foodNutrients: $foodNutrients)';
  }

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);

  Food copyWith({
    int? fdcId,
    String? description,
    String? dataType,
    String? publicationDate,
    List<FoodNutrition>? foodNutrients,
  }) {
    return Food(
      fdcId: fdcId ?? this.fdcId,
      description: description ?? this.description,
      dataType: dataType ?? this.dataType,
      publicationDate: publicationDate ?? this.publicationDate,
      foodNutrients: foodNutrients ?? this.foodNutrients,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Food) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      fdcId.hashCode ^
      description.hashCode ^
      dataType.hashCode ^
      publicationDate.hashCode ^
      foodNutrients.hashCode;
}
