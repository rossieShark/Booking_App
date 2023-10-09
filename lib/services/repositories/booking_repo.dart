import 'package:booking/models/booking_model.dart/booking_model.dart';

import 'package:booking/services/services/service.dart';

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
