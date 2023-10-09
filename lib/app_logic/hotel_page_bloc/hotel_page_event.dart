import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotel_page_event.freezed.dart';
part 'hotel_page_event.g.dart';

@freezed
class HotelEvent with _$HotelEvent {
  const factory HotelEvent.loadHotelInfo() = FetchHotelInfoEvent;

  factory HotelEvent.fromJson(Map<String, Object?> json) =>
      _$HotelEventFromJson(json);
}
