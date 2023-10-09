// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class BookingResponse with _$BookingResponse {
  factory BookingResponse({
    required int id,
    @JsonKey(name: 'hotel_name') required String hotelName,
    @JsonKey(name: 'hotel_adress') required String hotelAddress,
    required int horating,
    @JsonKey(name: 'rating_name') required String ratingName,
    required String departure,
    @JsonKey(name: 'arrival_country') required String arrivalCountry,
    @JsonKey(name: 'tour_date_start') required String tourDateStart,
    @JsonKey(name: 'tour_date_stop') required String tourDateStop,
    @JsonKey(name: 'number_of_nights') required int numberOfNights,
    required String room,
    required String nutrition,
    @JsonKey(name: 'tour_price') required int tourPrice,
    @JsonKey(name: 'fuel_charge') required int fuelCharge,
    @JsonKey(name: 'service_charge') required int serviceCharge,
  }) = _BookingResponse;
  static const fromJsonFactory = _$BookingResponseFromJson;
  factory BookingResponse.fromJson(Map<String, Object?> json) =>
      _$BookingResponseFromJson(json);
}
