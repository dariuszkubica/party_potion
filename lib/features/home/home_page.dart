import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/cubit/root_cubit.dart';
import 'package:party_potion/features/account/login_page.dart';
//import 'package:party_potion/features/drinks/details/alcohol_window_details.dart';
import 'package:party_potion/features/drinks/drinks_page.dart';
import 'package:party_potion/features/favorites/favorites_page.dart';
import 'package:party_potion/features/order/order_page.dart';
import 'package:party_potion/common_widgets/app_inactive_button_style.dart';
import 'package:party_potion/common_widgets/app_main_button_style.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootCubit, RootState>(
      builder: (context, state) {
        final user = state.user;
        return BackgroundImageWidget(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //------------------------------------------------------------------------------
              //          START SCAFFOLDA
              //          START PROFIL
              //------------------------------------------------------------------------------
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const LoginPage()));
                      },
                      child: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: const Color(0xFF202020),
                        backgroundImage: user != null
                            ? const AssetImage('images/me.jpg')
                            : const AssetImage('images/guest.png'),
                      ),
                    ),
                  ],
                ),
              ),
              //------------------------------------------------------------------------------
              //          END PROFIL
              //          START LOGO
              //------------------------------------------------------------------------------
              const Image(
                image: AssetImage('images/logo.png'),
              ),
              //------------------------------------------------------------------------------
              //          END LOGO
              //          START MENU
              //------------------------------------------------------------------------------
              Column(
                children: [
                  AppMainButtonStyle(
                    text: 'DRINKI',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const DrinksPage()));
                    },
                  ),
                  //------------------------------------------------------------------------------
                  const SizedBox(height: 20), //SPACER
                  //------------------------------------------------------------------------------
                  if (user != null) ...[
                    AppMainButtonStyle(
                      text: 'ULUBIONE',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const Favorites()));
                      },
                    ),
                  ] else ...[
                    const AppInactiveButtonStyle(
                      text: 'ULUBIONE',
                    ),
                  ],
                  //------------------------------------------------------------------------------
                  const SizedBox(height: 20), //SPACER
                  //------------------------------------------------------------------------------

                  if (user != null) ...[
                    AppMainButtonStyle(
                      text: 'ZAMÓWIENIE',
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const Order()));
                      },
                    ),
                  ] else ...[
                    const AppInactiveButtonStyle(
                      text: 'ZAMÓWIENIE',
                    ),
                  ],
                ],
              ),
            ],
          ),
        );
      },
    );
    //------------------------------------------------------------------------------
    //          END SCAFFOLD
    //------------------------------------------------------------------------------
  }
}
