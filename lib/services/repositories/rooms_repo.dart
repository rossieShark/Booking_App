import 'package:booking/models/rooms_model/room_model.dart';

import 'package:booking/services/services/service.dart';

class RoomsRepository {
  final HotelService _hotelService;

  RoomsRepository(this._hotelService);

  Future<List<Rooms>> getRooms() async {
    try {
      final roomsResponse = await _hotelService.getRooms();
      if (roomsResponse.isSuccessful) {
        final rooms = roomsResponse.body?.rooms as List<Rooms>;
        print(rooms);
        return rooms;
      } else {
        print('HTTP Error: ${roomsResponse.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }
}
