export 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking/app_logic/booking_bloc/booking_bloc_event.dart';
import 'package:booking/app_logic/booking_bloc/booking_bloc_state.dart';
import 'package:booking/app_logic/hotel_page_bloc/hotel_page_bloc.dart';

import 'package:booking/services/repositories/booking_repo.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final BookingRepository repository;

  BookingBloc(this.repository) : super(const BookingState.loading()) {
    on<FetchBookingEvent>(onFetchBookingInfo);
  }

  void onFetchBookingInfo(
      FetchBookingEvent event, Emitter<BookingState> emit) async {
    final bookingInfo = await repository.getBookingInfo();
    if (bookingInfo == null) {
      emit(const BookingState.noResults());
      return;
    }
    emit(BookingState.loaded(data: bookingInfo));
  }
}
