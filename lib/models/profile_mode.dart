import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_mode.g.dart';
part 'profile_mode.freezed.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    String? userName,
    @Default('https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg') String? userAvatar,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}
