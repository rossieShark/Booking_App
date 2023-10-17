export 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking/app_logic/index.dart';
import 'package:booking/services/services_index.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final HotelRepository repository;

  HotelBloc(this.repository) : super(const HotelState.loading()) {
    on<FetchHotelInfoEvent>(onFetchHotelInfo);
  }

  void onFetchHotelInfo(
      FetchHotelInfoEvent event, Emitter<HotelState> emit) async {
    final hotelInfo = await repository.getHotelInfomation();
    if (hotelInfo == null) {
      emit(const HotelState.noResults());
      return;
    }
    emit(HotelState.loaded(data: hotelInfo));
  }
}
