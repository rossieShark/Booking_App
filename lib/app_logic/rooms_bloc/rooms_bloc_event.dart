import 'package:freezed_annotation/freezed_annotation.dart';
part 'rooms_bloc_event.freezed.dart';
part 'rooms_bloc_event.g.dart';

@freezed
class RoomsBlocEvent with _$RoomsBlocEvent {
  const factory RoomsBlocEvent.loadHotelInfo() = FetchRoomsBlocEvent;

  factory RoomsBlocEvent.fromJson(Map<String, Object?> json) =>
      _$RoomsBlocEventFromJson(json);
}
