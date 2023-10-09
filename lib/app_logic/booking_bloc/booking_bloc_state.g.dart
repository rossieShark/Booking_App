// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_bloc_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoadingBookingState _$$LoadingBookingStateFromJson(
        Map<String, dynamic> json) =>
    _$LoadingBookingState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingBookingStateToJson(
        _$LoadingBookingState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoResultsBookingState _$$NoResultsBookingStateFromJson(
        Map<String, dynamic> json) =>
    _$NoResultsBookingState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoResultsBookingStateToJson(
        _$NoResultsBookingState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadedBookingState _$$LoadedBookingStateFromJson(Map<String, dynamic> json) =>
    _$LoadedBookingState(
      data: BookingResponse.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedBookingStateToJson(
        _$LoadedBookingState instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };
