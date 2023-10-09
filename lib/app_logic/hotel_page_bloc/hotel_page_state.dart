import 'package:booking/models/hotel_model/hotel_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotel_page_state.freezed.dart';
part 'hotel_page_state.g.dart';

@Freezed(equal: false)
class HotelState with _$HotelState {
  const factory HotelState.loading() = LoadingHotelState;
  const factory HotelState.noResults() = NoResultsHotelState;
  const factory HotelState.loaded({required HotelResponse data}) =
      LoadedHotelState;
  factory HotelState.fromJson(Map<String, Object?> json) =>
      _$HotelStateFromJson(json);
}
