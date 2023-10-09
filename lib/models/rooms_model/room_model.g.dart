// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomResponse _$$_RoomResponseFromJson(Map<String, dynamic> json) =>
    _$_RoomResponse(
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => Rooms.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomResponseToJson(_$_RoomResponse instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
    };

_$_Rooms _$$_RoomsFromJson(Map<String, dynamic> json) => _$_Rooms(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      pricePer: json['price_per'] as String,
      images: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      peculiarities: (json['peculiarities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_RoomsToJson(_$_Rooms instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'price_per': instance.pricePer,
      'image_urls': instance.images,
      'peculiarities': instance.peculiarities,
    };
