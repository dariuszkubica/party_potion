import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party_potion/app/core/enums.dart';

part 'alcohol_list_state.dart';
part 'alcohol_list_cubit.freezed.dart';

class AlcoholListCubit extends Cubit<AlcoholListState> {
  AlcoholListCubit() : super(AlcoholListState());
}
