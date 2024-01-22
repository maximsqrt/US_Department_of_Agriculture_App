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


// In Dart wird part als Teil des Code-Generierungssystems verwendet.
// Der Code in einem Dart-Programm kann in mehrere Dateien aufgeteilt sein. 
//Das part-Schlüsselwort wird verwendet, um Dateien zu identifizieren, 
//die zusammenarbeiten, um eine einzelne Implementierung zu erstellen.

// In deinem Beispiel wird part 'food.g.dart'; verwendet. 
//Das zeigt an, dass der generierte Code, der die Serialisierung/Deserialisierung
// für JSON unterstützt, in der Datei food.g.dart zu finden ist. 
//Diese Datei wird durch das json_serializable-Paket automatisch generiert.

// Zum Verständnis des @JsonSerializable()-Attributs: 
//Es handelt sich um eine Annotation in Dart, 
//die von dem Paket json_serializable bereitgestellt wird. 
//Diese Annotation wird auf Klassen angewendet, 
//um anzuzeigen,
// dass der Codegenerator automatisch Code für die 
//Serialisierung/Deserialisierung von JSON 
//für die annotierte Klasse generieren soll.

// Hier sind die Schlüsselpunkte:

// part 'food.g.dart';: Diese Zeile zeigt an, dass der generierte Code in der Datei food.g.dart zu finden ist. Dies ist Teil des Dart-Code-Generierungssystems.
// @JsonSerializable(): Dies ist eine Annotation, die anzeigt, dass die Klasse von einem Codegenerator verarbeitet werden soll. In diesem Fall wird der Codegenerator für JSON-Serialisierung/Deserialisierung verwendet, der durch das json_serializable-Paket bereitgestellt wird.
// Die json_serializable-Annotation ermöglicht es, boilerplate Code für die Konvertierung von Dart-Objekten in JSON und umgekehrt zu vermeiden. Der zugehörige Codegenerator erstellt die benötigten Funktionen wie fromJson und toJson automatisch basierend auf den Feldern der Klasse, die mit @JsonSerializable() annotiert ist. Dies erleichtert die Arbeit mit JSON-Daten in Dart.





