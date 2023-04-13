import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/models/alcohol_model.dart';
import 'package:party_potion/repositories/alcohol_list_repository.dart';

part 'alcohol_list_state.dart';
part 'alcohol_list_cubit.freezed.dart';

class AlcoholListCubit extends Cubit<AlcoholListState> {
  AlcoholListCubit(this.alcoholListRepository) : super(AlcoholListState());

  final AlcoholListRepository alcoholListRepository;

  StreamSubscription? streamSubscription;

  Future<void> start() async {
    streamSubscription = alcoholListRepository.getAlcoholStream().listen(
      (items) {
        emit(AlcoholListState(items: items));
      },
    )..onError(
        (error) {
          emit(AlcoholListState(errorMessage: error.toString()));
        },
      );
  }
}
