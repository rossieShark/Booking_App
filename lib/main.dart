import 'package:booking/app_logic/index.dart';
import 'package:booking/app_logic/test_controller.dart';
import 'package:booking/booking_app.dart';
import 'package:booking/widgets/get_it.dart';
import 'package:flutter/material.dart';

void main() {
  SetGetItDependencies().setupRepoDependencies();
  SetGetItDependencies().setupBlocDependencies();
  SetGetItDependencies().setupServiceDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TouristProvider()),
        ChangeNotifierProvider(create: (_) => TextFieldControllerProvider2()),
      ],
      child: BookingApp(),
    ),
  );
}
