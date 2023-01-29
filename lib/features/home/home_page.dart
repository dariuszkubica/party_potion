import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/core/config.dart';
import 'package:party_potion/app/cubit/auth_cubit.dart';
import 'package:party_potion/features/account/login_page.dart';
import 'package:party_potion/features/cocktail/cocktails_page.dart';
import 'package:party_potion/features/favorites/favorites_page.dart';
import 'package:party_potion/features/order/order_page.dart';
import 'package:party_potion/common_widgets/app_inactive_button_style.dart';
import 'package:party_potion/common_widgets/app_main_button_style.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:party_potion/features/search/search_cocktail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
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
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
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
                            ? const AssetImage('images/user.png')
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
                    text: 'COCKTAILS',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const CocktailsPage()));
                    },
                  ),
                  //------------------------------------------------------------------------------
                  const SizedBox(height: 20), //SPACER
                  //------------------------------------------------------------------------------
                  AppMainButtonStyle(
                    text: 'SEARCH',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const SearchCoctailPage()));
                    },
                  ),
                  //------------------------------------------------------------------------------
                  const SizedBox(height: 20), //SPACER
                  //------------------------------------------------------------------------------
                  if (Config.appFlavor == Flavor.production)
                    (const SizedBox())
                  else
                    (Column(
                      children: [
                        user != null
                            ? AppMainButtonStyle(
                                text: 'FAVORITES',
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => const Favorites()));
                                },
                              )
                            : const AppInactiveButtonStyle(
                                text: 'FAVORITES',
                              ),

                        //------------------------------------------------------------------------------
                        const SizedBox(height: 20), //SPACER
                        //------------------------------------------------------------------------------
                        user != null
                            ? AppMainButtonStyle(
                                text: 'ORDER',
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => const Order()));
                                },
                              )
                            : const AppInactiveButtonStyle(
                                text: 'ORDER',
                              ),
                      ],
                    ))
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
