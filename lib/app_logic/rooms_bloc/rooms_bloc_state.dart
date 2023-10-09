import 'package:booking/models/rooms_model/room_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'rooms_bloc_state.freezed.dart';
part 'rooms_bloc_state.g.dart';

@Freezed(equal: false)
class RoomsBlocState with _$RoomsBlocState {
  const factory RoomsBlocState.loading() = LoadingRoomsBlocState;
  const factory RoomsBlocState.noResults() = NoResultsRoomsBlocState;
  const factory RoomsBlocState.loaded({required List<Rooms> rooms}) =
      LoadedRoomsBlocState;
  factory RoomsBlocState.fromJson(Map<String, Object?> json) =>
      _$RoomsBlocStateFromJson(json);
}
