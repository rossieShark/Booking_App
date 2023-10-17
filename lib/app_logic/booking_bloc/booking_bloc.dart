export 'package:flutter_bloc/flutter_bloc.dart';

import 'package:booking/app_logic/index.dart';
import 'package:booking/services/services_index.dart';

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
