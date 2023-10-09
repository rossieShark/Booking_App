export 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking/app_logic/hotel_page_bloc/hotel_page_bloc.dart';
import 'package:booking/app_logic/hotel_page_bloc/hotel_page_event.dart';
import 'package:booking/app_logic/hotel_page_bloc/hotel_page_state.dart';
import 'package:booking/services/repositories/hotel_repo.dart';

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
