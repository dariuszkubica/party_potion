import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/core/config.dart';
import 'package:party_potion/app/cubit/auth_cubit.dart';
import 'package:party_potion/features/home/home_page.dart';
import 'package:party_potion/repositories/auth_repository.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(AuthRepository())..start(),
      child: MaterialApp(
        debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        home: const HomePage(),
      ),
    );
  }
}
