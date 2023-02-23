import 'package:json_annotation/json_annotation.dart';
import 'package:party_potion/models/drink_model.dart';

class CocktailsConverter
    implements JsonConverter<List<DrinkModel>, Map<String?, String?>> {
  const CocktailsConverter();

  @override
  List<DrinkModel> fromJson(Map<String?, String?> drinksList) {
    return drinksList.entries
        .map(
          (mapEntry) => DrinkModel(
            drinkName: mapEntry.key ?? '',
          ),
        )
        .toList();
  }

  @override
  Map<String?, String?> toJson(List<DrinkModel> drinksModel) {
    return {};
  }
}
