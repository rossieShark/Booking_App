// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart';

@freezed
class RoomResponse with _$RoomResponse {
  factory RoomResponse({required List<Rooms> rooms}) = _RoomResponse;
  static const fromJsonFactory = _$RoomResponseFromJson;
  factory RoomResponse.fromJson(Map<String, Object?> json) =>
      _$RoomResponseFromJson(json);
}

@freezed
class Rooms with _$Rooms {
  factory Rooms(
      {required int id,
      required String name,
      required int price,
      @JsonKey(name: 'price_per') required String pricePer,
      @JsonKey(name: 'image_urls') required List<String> images,
      required List<String> peculiarities}) = _Rooms;

  factory Rooms.fromJson(Map<String, Object?> json) => _$RoomsFromJson(json);
}
