// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_model.freezed.dart';
part 'hotel_model.g.dart';

@freezed
class HotelResponse with _$HotelResponse {
  factory HotelResponse(
      {required int id,
      required String name,
      required String adress,
      @JsonKey(name: 'minimal_price') required int minPrice,
      @JsonKey(name: 'price_for_it') required String priceForIt,
      required int rating,
      @JsonKey(name: 'rating_name') required String ratingName,
      @JsonKey(name: 'image_urls') required List<String> images,
      @JsonKey(name: 'about_the_hotel')
      required AboutTheHotel aboutTheHotel}) = _HotelResponse;
  static const fromJsonFactory = _$HotelResponseFromJson;
  factory HotelResponse.fromJson(Map<String, Object?> json) =>
      _$HotelResponseFromJson(json);
}

@freezed
class AboutTheHotel with _$AboutTheHotel {
  factory AboutTheHotel(
      {required String description,
      required List<String> peculiarities}) = _AboutTheHotel;

  factory AboutTheHotel.fromJson(Map<String, Object?> json) =>
      _$AboutTheHotelFromJson(json);
}
