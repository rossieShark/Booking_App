import 'package:booking/app_logic/index.dart';
import 'package:booking/services/services_index.dart';
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
    GetIt.instance.registerLazySingleton<TextFieldsProvider>(
      () => TextFieldsProvider(),
    );
  }
}
