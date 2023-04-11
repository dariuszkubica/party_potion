import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:party_potion/app/core/enums.dart';
import 'package:party_potion/app/cubit/auth_cubit.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/features/account/profile/cubit/profile_cubit.dart';
import 'package:party_potion/repositories/profile_repository.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uid = context.read<AuthCubit>().state.user?.uid;
    final user = context.read<AuthCubit>().state.user?.email;
    if (uid == null) {
      return const SizedBox.shrink();
    }
    return BlocProvider<ProfileCubit>(
      create: (context) => ProfileCubit(ProfileRepository())..start(),
      child: BlocConsumer<ProfileCubit, ProfileState>(
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
          return BackgroundImageWidget(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Hello $user!',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 145,
                        backgroundColor: const Color(0xFF250000),
                        backgroundImage:
                            NetworkImage(state.profileModel.userAvatar),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 15,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.red,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              50,
                            ),
                          ),
                          color: const Color(0xFF250000),
                        ),
                        child: IconButton(
                          iconSize: 24,
                          onPressed: () async {
                            final picker = ImagePicker();
                            try {
                              final file = await picker.pickImage(
                                source: ImageSource.gallery,
                                maxWidth: 200,
                                maxHeight: 200,
                                imageQuality: 100,
                              );
                              if (file != null && context.mounted) {
                                await context
                                    .read<ProfileCubit>()
                                    .updateUserAvatar(file: file);
                              }
                            } catch (error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(error.toString()),
                                ),
                              );
                            }
                          },
                          icon: const Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                )
                // const AppInactiveButtonStyle(
                //   text: 'Change Password',
                //   onPressed: () {
                //     Navigator.of(context).push(MaterialPageRoute(
                //         builder: (_) => const ChangePasswordPage()));
                //   },
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
