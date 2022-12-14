import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
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
        children: [
          //------------------------------------------------------------------------------
          //          START SCAFFOLDA
          //          START PROFIL
          //------------------------------------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                maxRadius: 25,
                backgroundColor: const Color(0xFF202020),
                /* backgroundImage: const AssetImage('images/avatar.png'), */
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
          //------------------------------------------------------------------------------
          //          END PROFIL
          //------------------------------------------------------------------------------
          const SizedBox(height: 40), //SPACER
          //------------------------------------------------------------------------------
          //          START LOGO
          //------------------------------------------------------------------------------
          /* const Image(
            image: AssetImage('images/logo.png'),
          ), */
          const SizedBox(
            height: 20,
          ),
          //------------------------------------------------------------------------------
          //          KONICE LOGO
          //          START MENU
          //------------------------------------------------------------------------------
          const SizedBox(height: 40), //SPACER
          //------------------------------------------------------------------------------
          AppMainButtonStyle(
            text: 'DRINKI',
            onPressed: () {},
          ),
          //------------------------------------------------------------------------------
          const SizedBox(height: 20), //SPACER
          //------------------------------------------------------------------------------
          AppMainButtonStyle(
            text: 'ULUBIONE',
            onPressed: () {},
          ),
          //------------------------------------------------------------------------------
          const SizedBox(height: 20), //SPACER
          //------------------------------------------------------------------------------
          AppMainButtonStyle(
            text: 'ZAMÓWIENIE',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
