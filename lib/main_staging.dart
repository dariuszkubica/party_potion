import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:party_potion/app/app.dart';
import 'package:party_potion/app/core/config.dart';
import 'package:party_potion/firebase_options.dart';

void main() async {
  Config.appFlavor = Flavor.staging;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}