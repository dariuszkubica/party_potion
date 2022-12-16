import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/models/background_image_widget.dart';
import 'package:party_potion/models/friends_window_style.dart';
import 'package:party_potion/features/account/friends/cubit/friends_list_cubit.dart';

class FriendsList extends StatelessWidget {
  FriendsList({
    Key? key,
  }) : super(key: key);

  final friendsAddController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FriendsListCubit()..start(),
      child: Builder(builder: (context) {
        return BackgroundImageWidget(
          child: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 450,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                        width: 1,
                        color: Colors.black38,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      child: ShaderMask(
                        shaderCallback: (Rect rect) {
                          return const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.red,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.red,
                            ],
                            stops: [0.0, 0.05, 0.95, 1.0],
                          ).createShader(rect);
                        },
                        blendMode: BlendMode.dstOut,
                        child: BlocBuilder<FriendsListCubit, FriendsListState>(
                          builder: (context, state) {
                            if (state.errorMessage.isNotEmpty) {
                              return Center(
                                child: Text(
                                  'Wystąpił nieoczekiwany problem: ${state.errorMessage}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              );
                            }
                            if (state.isLoading) {
                              return const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.red,
                                  backgroundColor: Color(0xFF250000),
                                ),
                              );
                            }
                            final documents = state.documents;
                            return ListView(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(top: 10)),
                                for (final document in documents) ...[
                                  Dismissible(
                                    key: ValueKey(document.id),
                                    background: Container(
                                      width: double.infinity,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF250000)
                                            .withOpacity(0.2),
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.red,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(25),
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(20),
                                      margin: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Icon(
                                            Icons.delete,
                                            color: Colors.black,
                                          ),
                                          Icon(
                                            Icons.delete,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                    confirmDismiss: (direction) async {
                                      return showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: const RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1, color: Colors.red),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(30.0),
                                              ),
                                            ),
                                            backgroundColor:
                                                const Color(0xFF250000),
                                            content: const Text(
                                              'Czy na pewno chcesz usunąć znajomego z listy?',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop(false);
                                                },
                                                child: const Text(
                                                  'Nie',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                  child: const Text(
                                                    'Tak',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ))
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    onDismissed: (_) {
                                      context
                                          .read<FriendsListCubit>()
                                          .deleteFriend(document.id);
                                    },
                                    child: AddFriends(document['friendname']),
                                  ),
                                ],
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF250000).withOpacity(0.2),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    margin: const EdgeInsets.all(16),
                    child: TextField(
                      controller: friendsAddController,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: const BorderSide(color: Colors.red),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF250000)),
                      ),
                      onPressed: () {
                        context
                            .read<FriendsListCubit>()
                            .addFriend(friendsAddController.text);
                        friendsAddController.clear();
                      },
                      child: const Text('Dodaj znajomego'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}