import 'package:freezed_annotation/freezed_annotation.dart';

part 'drinks_dto.freezed.dart';
part 'drinks_dto.g.dart';

@freezed
class DrinksDTO with _$DrinksDTO {
  const factory DrinksDTO({
    required List<DrinkDTO> drinks,
  }) = _DrinksDTO;

  factory DrinksDTO.fromJson(Map<String, Object?> json) =>
      _$DrinksDTOFromJson(json);
}

@freezed
class DrinkDTO with _$DrinkDTO {
  const factory DrinkDTO({
    required String strDrink,
    String? strDrinkThumb,
    String? idDrink,
  }) = _DrinkDTO;

  factory DrinkDTO.fromJson(Map<String, Object?> json) =>
      _$DrinkDTOFromJson(json);
}
