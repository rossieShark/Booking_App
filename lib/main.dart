import 'package:booking/booking_app.dart';
import 'package:booking/services/services_index.dart';
import 'package:flutter/material.dart';

void main() {
  SetGetItDependencies().setupRepoDependencies();
  SetGetItDependencies().setupBlocDependencies();
  SetGetItDependencies().setupServiceDependencies();
  SetGetItDependencies().setupProviderDependencies();
  runApp(
    const BookingApp(),
  );
}
