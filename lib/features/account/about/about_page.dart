import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Aplikacja Stworzona przez:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          const CircleAvatar(
            maxRadius: 100,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/me.jpg'),
          ),
          const SizedBox(height: 20),
          const Text(
            'Dariusz Kubica',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Flutter developer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: 300,
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
              icon: const Icon(Icons.mail),
              //onPressed: () {},
              onPressed: () async {
                String email = Uri.encodeComponent("E-mail");
                String subject = Uri.encodeComponent("");
                String body = Uri.encodeComponent("");
                Uri mail =
                    Uri.parse("mailto:$email?subject=$subject&body=$body");
                if (await launchUrl(mail)) {
                  //email app opened
                } else {
                  //email app is not opened
                }
              },
              label: const Text('E-mail'),
            ),
          ),
        ],
      ),
    );
  }
}
