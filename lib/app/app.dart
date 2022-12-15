import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:party_potion/features/home/drinks/drings_page.dart';
import 'package:party_potion/features/home/favorites/favorites_page.dart';
import 'package:party_potion/features/home/order/order_page.dart';
import 'package:party_potion/models/app_main_button_style.dart';
import 'package:party_potion/models/background_image_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //------------------------------------------------------------------------------
          //          START SCAFFOLDA
          //          START PROFIL
          //------------------------------------------------------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: const Color(0xFF202020),
                  backgroundImage: const AssetImage('images/guest.png'),
                  child: ElevatedButton(
                    child: null,
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(25),
                      backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                    ),
                    onPressed: () {},
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const Drinks()));
                },
              ),
              //------------------------------------------------------------------------------
              const SizedBox(height: 20), //SPACER
              //------------------------------------------------------------------------------
              AppMainButtonStyle(
                text: 'ULUBIONE',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const Favorites()));
                },
              ),
              //------------------------------------------------------------------------------
              const SizedBox(height: 20), //SPACER
              //------------------------------------------------------------------------------
              AppMainButtonStyle(
                text: 'ZAMÓWIENIE',
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const Order()));
                },
              ),
            ],
          ),
        ],
      ),
    );
    //------------------------------------------------------------------------------
    //          END SCAFFOLD
    //------------------------------------------------------------------------------
  }
}
