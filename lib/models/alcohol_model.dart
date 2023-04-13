import 'package:freezed_annotation/freezed_annotation.dart';

part 'alcohol_model.freezed.dart';
part 'alcohol_model.g.dart';

@freezed
class AlcoholModel with _$AlcoholModel {
  factory AlcoholModel({
    required String id,
    required String alcoholName,
    required String? alcoholUrl,
    required bool have,
  }) = _AlcoholModel;

  factory AlcoholModel.fromJson(Map<String, dynamic> json) =>
      _$AlcoholModelFromJson(json);
}
