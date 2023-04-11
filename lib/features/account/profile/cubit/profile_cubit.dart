import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/models/profile_model.dart';
import 'package:party_potion/repositories/profile_repository.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.profileRepository)
      : super(ProfileState(
          profileModel: ProfileModel(userID: ''),
        ));

  final ProfileRepository profileRepository;

  StreamSubscription? streamSubscription;

  Future<void> start() async {
    streamSubscription =
        profileRepository.getProfileStream().listen((profileModel) {
      emit(ProfileState(
        profileModel: profileModel,
      ));
    })
          ..onError((error) {
            emit(ProfileState(
              errorMessage: error.toString(),
              profileModel: ProfileModel(userID: ''),
            ));
          });
  }

  Future<void> updateUserAvatar({
    required XFile file,
  }) async {
    try {
      final userAvatar = await profileRepository.updateUserAvatar(
        filePath: file.path,
        fileBytes: await file.readAsBytes(),
      );

      emit(
        state.copyWith(
          profileModel: state.profileModel.copyWith(userAvatar: userAvatar),
          status: Status.success,
        ),
      );
    } catch (exception) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: exception.toString(),
        ),
      );
    }
  }

  // Future<void> updateUserName() async {
  //   try {
  //     await profileRepository.updateUserName(userName: '');
  //     emit(
  //       state.copyWith(
  //         profileModel: state.profileModel.copyWith(userName: ''),
  //         status: Status.success,
  //       ),
  //     );
  //   } catch (exception) {
  //     emit(
  //       state.copyWith(
  //         status: Status.error,
  //         errorMessage: exception.toString(),
  //       ),
  //     );
  //   }
  // }
}
