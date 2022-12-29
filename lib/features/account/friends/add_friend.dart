import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/features/account/friends/cubit/friends_list_cubit.dart';
import 'package:party_potion/repositories/friends_repository.dart';

class AddFriend extends StatefulWidget {
  const AddFriend({
    Key? key,
  }) : super(key: key);

  @override
  State<AddFriend> createState() => _AddFriendState();
}

class _AddFriendState extends State<AddFriend> {
  String? _name;
  String? _favDrink;
  String? _avatarImageURL;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FriendsListCubit(FriendsRepository()),
      child: BlocListener<FriendsListCubit, FriendsListState>(
        listener: (context, state) {
          if (state.saved) {
            Navigator.of(context).pop();
          }
          if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.errorMessage),
              backgroundColor: Colors.red,
            ));
          }
        },
        child: BlocBuilder<FriendsListCubit, FriendsListState>(
          builder: (context, state) {
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
                        child: _AddFrinedBody(
                          onNameChanged: (newValue) {
                            setState(() {
                              _name = newValue;
                            });
                          },
                          onFavDrinkChanged: (newValue) {
                            setState(() {
                              _favDrink = newValue;
                            });
                          },
                          onAvatarImageUrlChanged: (newValue) {
                            setState(() {
                              _avatarImageURL = newValue;
                            });
                          },
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
                              onPressed: _name == null
                                  ? null
                                  : () {
                                      context
                                          .read<FriendsListCubit>()
                                          .addFriend(
                                            _name!,
                                            _favDrink,
                                            _avatarImageURL,
                                          );
                                    },
                              child: const Text('Add friend'),
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

class _AddFrinedBody extends StatelessWidget {
  const _AddFrinedBody({
    Key? key,
    required this.onNameChanged,
    required this.onFavDrinkChanged,
    required this.onAvatarImageUrlChanged,
  }) : super(key: key);

  final Function(String) onNameChanged;
  final Function(String) onFavDrinkChanged;
  final Function(String) onAvatarImageUrlChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          TextField(
            onChanged: onNameChanged,
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
              labelText: 'Name',
              labelStyle: TextStyle(color: Colors.white30),
              floatingLabelStyle: TextStyle(color: Colors.white),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: onFavDrinkChanged,
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
              labelText: 'Favorite cocktail',
              labelStyle: TextStyle(color: Colors.white30),
              floatingLabelStyle: TextStyle(color: Colors.white),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: onAvatarImageUrlChanged,
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
              hintText: 'http:// ... .jpg',
              hintStyle: TextStyle(color: Colors.white30),
              labelText: 'Avatar',
              labelStyle: TextStyle(color: Colors.white30),
              floatingLabelStyle: TextStyle(color: Colors.white),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
