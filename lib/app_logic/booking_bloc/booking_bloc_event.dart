import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_bloc_event.freezed.dart';
part 'booking_bloc_event.g.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.loadHotelInfo() = FetchBookingEvent;

  factory BookingEvent.fromJson(Map<String, Object?> json) =>
      _$BookingEventFromJson(json);
}
