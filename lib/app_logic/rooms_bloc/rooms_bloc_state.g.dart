// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_bloc_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoadingRoomsBlocState _$$LoadingRoomsBlocStateFromJson(
        Map<String, dynamic> json) =>
    _$LoadingRoomsBlocState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingRoomsBlocStateToJson(
        _$LoadingRoomsBlocState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoResultsRoomsBlocState _$$NoResultsRoomsBlocStateFromJson(
        Map<String, dynamic> json) =>
    _$NoResultsRoomsBlocState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoResultsRoomsBlocStateToJson(
        _$NoResultsRoomsBlocState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadedRoomsBlocState _$$LoadedRoomsBlocStateFromJson(
        Map<String, dynamic> json) =>
    _$LoadedRoomsBlocState(
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => Rooms.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedRoomsBlocStateToJson(
        _$LoadedRoomsBlocState instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
      'runtimeType': instance.$type,
    };
