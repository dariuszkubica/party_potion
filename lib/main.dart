import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:party_potion/app/app.dart';
import 'package:party_potion/firebase_options.dart';
// import 'package:flutter/foundation.dart';
// import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  /*  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  ); */
}
