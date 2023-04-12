import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party_potion/models/ingredient_model.dart';

part 'cocktail_model.freezed.dart';
part 'cocktail_model.g.dart';

@freezed
class CocktailModel with _$CocktailModel {
  factory CocktailModel({
    required String cocktailName,
    @Default('Instruction') String? instructions,
    @Default('ImageURL') String? imageURL,
    List<IngredientModel>? ingredientsList,
  }) = _CocktailModel;

  factory CocktailModel.fromJson(Map<String, dynamic> json) =>
      _$CocktailModelFromJson(json);
}
