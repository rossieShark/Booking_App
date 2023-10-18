// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$HotelService extends HotelService {
  _$HotelService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = HotelService;

  @override
  Future<Response<HotelResponse>> getHotelInfo() {
    final Uri $url = Uri.parse(
        'https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<HotelResponse, HotelResponse>($request);
  }

  @override
  Future<Response<RoomResponse>> getRooms() {
    final Uri $url = Uri.parse(
        'https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<RoomResponse, RoomResponse>($request);
  }

  @override
  Future<Response<BookingResponse>> getBookingInfo() {
    final Uri $url = Uri.parse(
        'https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BookingResponse, BookingResponse>($request);
  }
}
