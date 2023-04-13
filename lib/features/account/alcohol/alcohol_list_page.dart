import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/common_widgets/alcohol_window_style.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/features/account/alcohol/cubit/alcohol_list_cubit.dart';
import 'package:party_potion/repositories/alcohol_list_repository.dart';

class AlcoholsListPage extends StatelessWidget {
  const AlcoholsListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlcoholListCubit(AlcoholListRepository())..start(),
      child: BlocConsumer<AlcoholListCubit, AlcoholListState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          final alcoholModels = state.items;
          return BackgroundImageWidget(
            child: SingleChildScrollView(
              reverse: true,
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      for (final alcoholModel in alcoholModels)
                        ViewAlcohol(
                          alcoholModel: alcoholModel,
                        ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
