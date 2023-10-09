import 'package:booking/models/booking_model.dart/booking_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_bloc_state.freezed.dart';
part 'booking_bloc_state.g.dart';

@Freezed(equal: false)
class BookingState with _$BookingState {
  const factory BookingState.loading() = LoadingBookingState;
  const factory BookingState.noResults() = NoResultsBookingState;
  const factory BookingState.loaded({required BookingResponse data}) =
      LoadedBookingState;
  factory BookingState.fromJson(Map<String, Object?> json) =>
      _$BookingStateFromJson(json);
}
