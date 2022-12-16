import 'package:flutter/material.dart';
import 'package:party_potion/features/account/about/about_page.dart';
import 'package:party_potion/models/app_main_button_style.dart';
import 'package:party_potion/models/background_image_widget.dart';

class Account extends StatelessWidget {
  const Account({
    Key? key,
    //required this.user,
  }) : super(key: key);

  //final String? user;

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
                label: const Text(
                  'Wyloguj || Zalogowany jako: ',
                  style: TextStyle(fontSize: 12),
                ),
                onPressed: () {
                  /* 
                  context.read<RootCubit>().signOut(); */
                },
              ),
            ),
          ),
          SizedBox(
            child: Column(
              children: [
                AppMainButtonStyle(
                  text: 'Lista alkoholi',
                  onPressed: () {
                    /* Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const AlcoholsList())); */
                  },
                ),
//------------------------------------------------------------------------------
                const SizedBox(height: 10), //SPACER
//------------------------------------------------------------------------------
                AppMainButtonStyle(
                  text: 'Lista znajomych',
                  onPressed: () {
                    /*  Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => FriendsList())); */
                  },
                ),
//------------------------------------------------------------------------------
                const SizedBox(height: 10), //SPACER
//------------------------------------------------------------------------------
                AppMainButtonStyle(
                  text: 'Zmiana hasła',
                  onPressed: () {
                    /* Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const ChangePassword())); */
                  },
                ),
//------------------------------------------------------------------------------
                const SizedBox(height: 10), //SPACER
//------------------------------------------------------------------------------
                AppMainButtonStyle(
                  text: 'Avatar',
                  onPressed: () {
                    /*  Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const ChangeAvatar())); */
                  },
                ),
              ],
            ),
          ),
          AppMainButtonStyle(
            text: 'O programie',
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const About()));
            },
          ),
        ],
      ),
    );
  }
}
