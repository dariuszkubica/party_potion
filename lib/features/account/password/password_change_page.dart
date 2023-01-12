import 'package:flutter/material.dart';
import 'package:party_potion/common_widgets/background_image_widget.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWidget(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/work_in_progress.png'),
            fit: BoxFit.fill,
            opacity: 0.3,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
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
                onPressed: () {},
                child: const Text('old password'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
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
                onPressed: () {},
                child: const Text('new password'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
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
                onPressed: () {},
                child: const Text('repeat new password'),
              ),
            ),
            const SizedBox(height: 100),
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
                icon: const Icon(Icons.lock_open),
                onPressed: () {
                  const Text('Password has be changed');
                },
                label: const Text('Change Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//Add ability to change password