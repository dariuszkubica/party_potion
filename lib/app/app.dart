import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:party_potion/app/cubit/root_cubit.dart';
import 'package:party_potion/features/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit()..start(),
      child: const MaterialApp(
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        home: HomePage(),
      ),
    );
  }
}
