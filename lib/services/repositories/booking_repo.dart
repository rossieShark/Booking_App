import 'package:booking/models/models_index.dart';
import 'package:booking/services/services_index.dart';

class BookingRepository {
  final HotelService _hotelService;

  BookingRepository(this._hotelService);

  Future<BookingResponse?> getBookingInfo() async {
    try {
      final bookingResponse = await _hotelService.getBookingInfo();
      if (bookingResponse.isSuccessful) {
        final bookingInfo = bookingResponse.body;
        print(bookingInfo);
        return bookingInfo;
      } else {
        print('HTTP Error: ${bookingResponse.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
