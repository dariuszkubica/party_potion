import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/features/account/alcohol/cubit/alcohol_list_cubit.dart';
import 'package:party_potion/repositories/alcohol_list_repository.dart';

class UpdateAlcohol extends StatelessWidget {
  UpdateAlcohol({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;
  String? have;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlcoholListCubit(AlcoholListRepository()),
      child: BlocListener<AlcoholListCubit, AlcoholListState>(
        listener: (context, state) {
          if (state.status == Status.success) {
            Navigator.of(context).pop();
          }
          if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.errorMessage),
              backgroundColor: Colors.red,
            ));
          }
        },
        child: BlocBuilder<AlcoholListCubit, AlcoholListState>(
          builder: (context, state) {
            final controller = TextEditingController();
            return BackgroundImageWidget(
              child: SingleChildScrollView(
                reverse: false,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          border: Border.all(
                            width: 1,
                            color: Colors.black38,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 50,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: _UpdateAlcoholBody(
                          id: id,
                          controller: controller,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 170,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(color: Colors.red),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xFF250000)),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Back'),
                            ),
                          ),
                          SizedBox(
                            width: 170,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(color: Colors.red),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xFF250000)),
                              ),
                              onPressed: () {
                                context.read<AlcoholListCubit>().update(
                                      id: id,
                                      have: controller.text,
                                    );
                              },
                              child: const Text('Update'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _UpdateAlcoholBody extends StatelessWidget {
  const _UpdateAlcoholBody({
    Key? key,
    required this.id,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 48,
              ),
              Text(
                id.toUpperCase(),
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Center(
                          child: Text(
                        '1L = 1000ml',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                      backgroundColor: Colors.transparent,
                    ),
                  );
                },
                icon: const Icon(
                  Icons.info_outline,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Color(0xFF000000),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Color(0xFFFF0000),
                ),
              ),
              labelText: 'How much alcohol do you have in milliliters?',
              labelStyle: TextStyle(color: Colors.white30, fontSize: 14),
              floatingLabelStyle: TextStyle(color: Colors.white),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
