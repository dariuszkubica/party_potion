import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/core/config.dart';
import 'package:party_potion/app/cubit/auth_cubit.dart';
import 'package:party_potion/features/account/about/about_page.dart';
import 'package:party_potion/features/account/alcohol/alcohol_list_page.dart';
import 'package:party_potion/features/account/avatar/avatar_change_page.dart';
import 'package:party_potion/features/account/friends/friends_list_page.dart';
import 'package:party_potion/features/account/password/password_change_page.dart';
import 'package:party_potion/common_widgets/app_main_button_style.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class Account extends StatelessWidget {
  const Account({
    Key? key,
    required this.user,
  }) : super(key: key);

  final String? user;

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: 30,
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF250000)),
                ),
                icon: const Icon(
                  Icons.logout,
                  size: 16,
                ),
                label: Text(
                  'Logout || Logged by: $user',
                  style: const TextStyle(fontSize: 12),
                ),
                onPressed: () {
                  context.read<AuthCubit>().signOut();
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                AppMainButtonStyle(
                  text: 'Friends list',
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => FriendsListPage()));
                  },
                ),
                if (Config.appFlavor == Flavor.production)
                  (const SizedBox())
                else
                  (Column(children: [
                    //------------------------------------------------------------------------------
                    const SizedBox(height: 10), //SPACER
                    //------------------------------------------------------------------------------
                    AppMainButtonStyle(
                      text: 'Alcohol list',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const AlcoholsListPage()));
                      },
                    ),
                    //------------------------------------------------------------------------------
                    const SizedBox(height: 10), //SPACER
                    //------------------------------------------------------------------------------
                    AppMainButtonStyle(
                      text: 'Change password',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const ChangePasswordPage()));
                      },
                    ),
                    //------------------------------------------------------------------------------
                    const SizedBox(height: 10), //SPACER
                    //------------------------------------------------------------------------------
                    AppMainButtonStyle(
                      text: 'Avatar',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const ChangeAvatarPage()));
                      },
                    ),
                  ])),
              ],
            ),
          ),
          AppMainButtonStyle(
            text: 'About',
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const AboutPage()));
            },
          ),
        ],
      ),
    );
  }
}
