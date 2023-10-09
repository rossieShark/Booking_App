import 'package:booking/app_logic/controller_provider.dart';
import 'package:booking/app_logic/hotel_page_bloc/hotel_page_bloc.dart';
import 'package:booking/app_logic/tourist_provider/tourist_provider.dart';

import 'package:booking/screens/hotel_page.dart';
import 'package:booking/widgets/get_it.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() {
  SetGetItDependencies().setupRepoDependencies();
  SetGetItDependencies().setupBlocDependencies();
  SetGetItDependencies().setupServiceDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TouristProvider()),
        ChangeNotifierProvider(
            create: (context) => TextFieldControllerProvider()),
        // Add other providers if needed
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocProvider<HotelBloc>(
          create: (_) => GetIt.I(),
          child: const HotelPage(),
        ),
      ),
    );
  }
}
