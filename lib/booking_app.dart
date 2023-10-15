import 'package:booking/app_logic/index.dart';
import 'package:booking/app_logic/test_controller.dart';
import 'package:booking/screens/hotel_page.dart';
import 'package:booking/widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TouristProvider()),
        ChangeNotifierProvider(
            create: (context) => TextFieldControllerProvider()),
        ChangeNotifierProvider(
            create: (context) => TextFieldControllerProvider2()),
        // Add other providers if needed
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          appBarTheme: const AppBarTheme(
              centerTitle: true,
              surfaceTintColor: Colors.transparent,
              elevation: 0.0,
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontFamily: 'SFPro',
                  fontWeight: FontWeight.w500,
                  height: 21.6 / 18)),
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
