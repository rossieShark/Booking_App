import 'package:booking/app_logic/booking_bloc/booking_bloc.dart';

import 'package:booking/app_logic/index.dart';
import 'package:booking/app_logic/rooms_bloc/rooms_bloc.dart';
import 'package:booking/app_logic/test_controller.dart';
import 'package:booking/services/repositories/booking_repo.dart';
import 'package:booking/services/repositories/hotel_repo.dart';
import 'package:booking/services/repositories/rooms_repo.dart';
import 'package:booking/services/services/service.dart';

import 'package:get_it/get_it.dart';

class SetGetItDependencies {
  void setupRepoDependencies() {
    GetIt.instance.registerLazySingleton<HotelRepository>(
      () => HotelRepository(GetIt.instance.get()),
    );
    GetIt.instance.registerLazySingleton<RoomsRepository>(
      () => RoomsRepository(GetIt.instance.get()),
    );
    GetIt.instance.registerLazySingleton<BookingRepository>(
      () => BookingRepository(GetIt.instance.get()),
    );
  }

  void setupBlocDependencies() {
    GetIt.instance
        .registerFactory<HotelBloc>(() => HotelBloc(GetIt.instance.get()));
    GetIt.instance
        .registerFactory<RoomsBloc>(() => RoomsBloc(GetIt.instance.get()));
    GetIt.instance
        .registerFactory<BookingBloc>(() => BookingBloc(GetIt.instance.get()));
  }

  void setupServiceDependencies() {
    GetIt.instance.registerLazySingleton(() => HotelService.create());
  }

  void setupProviderDependencies() {
    GetIt.instance.registerLazySingleton<TouristProvider>(
      () => TouristProvider(),
    );
    GetIt.instance.registerLazySingleton<TextFieldControllerProvider2>(
      () => TextFieldControllerProvider2(),
    );
  }
}
