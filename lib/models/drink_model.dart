import 'package:freezed_annotation/freezed_annotation.dart';

part 'drink_model.freezed.dart';
part 'drink_model.g.dart';

@freezed
@JsonSerializable()
class DrinkModel with _$DrinkModel {
  factory DrinkModel({
    required String drinkName,
  }) = _DrinkModel;
}
