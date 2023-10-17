import 'package:booking/models/models_index.dart';
import 'package:booking/services/services_index.dart';

class HotelRepository {
  final HotelService _hotelService;

  HotelRepository(this._hotelService);

  Future<HotelResponse?> getHotelInfomation() async {
    try {
      final hotelResponse = await _hotelService.getHotelInfo();
      if (hotelResponse.isSuccessful) {
        final hotelInfo = hotelResponse.body;
        print(hotelInfo);
        return hotelInfo;
      } else {
        print('HTTP Error: ${hotelResponse.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
