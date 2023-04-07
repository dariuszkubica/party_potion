import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_mode.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? userName,
    String? userAvatar,
  }) = _UserModel;
}
