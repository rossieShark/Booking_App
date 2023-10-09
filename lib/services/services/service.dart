import 'package:booking/models/booking_model.dart/booking_model.dart';
import 'package:booking/models/hotel_model/hotel_model.dart';
import 'package:booking/models/rooms_model/room_model.dart';
import 'package:booking/services/helper/json_serializable.dart';
import 'package:chopper/chopper.dart';

part 'service.chopper.dart';

@ChopperApi(baseUrl: "https://run.mocky.io/v3/")
abstract class HotelService extends ChopperService {
  static HotelService create() => _$HotelService(
        ChopperClient(converter: $JsonSerializableConverter()),
      );

  @Get(path: '35e0d18e-2521-4f1b-a575-f0fe366f66e3')
  Future<Response<HotelResponse>> getHotelInfo();
  @Get(path: 'f9a38183-6f95-43aa-853a-9c83cbb05ecd')
  Future<Response<RoomResponse>> getRooms();
  @Get(path: 'e8868481-743f-4eb2-a0d7-2bc4012275c8')
  Future<Response<BookingResponse>> getBookingInfo();
}
