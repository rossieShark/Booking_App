// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoadingHotelState _$$LoadingHotelStateFromJson(Map<String, dynamic> json) =>
    _$LoadingHotelState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingHotelStateToJson(_$LoadingHotelState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoResultsHotelState _$$NoResultsHotelStateFromJson(
        Map<String, dynamic> json) =>
    _$NoResultsHotelState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoResultsHotelStateToJson(
        _$NoResultsHotelState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadedHotelState _$$LoadedHotelStateFromJson(Map<String, dynamic> json) =>
    _$LoadedHotelState(
      data: HotelResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedHotelStateToJson(_$LoadedHotelState instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };
