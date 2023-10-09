// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomsBlocEvent _$RoomsBlocEventFromJson(Map<String, dynamic> json) {
  return FetchRoomsBlocEvent.fromJson(json);
}

/// @nodoc
mixin _$RoomsBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHotelInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHotelInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHotelInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRoomsBlocEvent value) loadHotelInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRoomsBlocEvent value)? loadHotelInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRoomsBlocEvent value)? loadHotelInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsBlocEventCopyWith<$Res> {
  factory $RoomsBlocEventCopyWith(
          RoomsBlocEvent value, $Res Function(RoomsBlocEvent) then) =
      _$RoomsBlocEventCopyWithImpl<$Res, RoomsBlocEvent>;
}

/// @nodoc
class _$RoomsBlocEventCopyWithImpl<$Res, $Val extends RoomsBlocEvent>
    implements $RoomsBlocEventCopyWith<$Res> {
  _$RoomsBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchRoomsBlocEventCopyWith<$Res> {
  factory _$$FetchRoomsBlocEventCopyWith(_$FetchRoomsBlocEvent value,
          $Res Function(_$FetchRoomsBlocEvent) then) =
      __$$FetchRoomsBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRoomsBlocEventCopyWithImpl<$Res>
    extends _$RoomsBlocEventCopyWithImpl<$Res, _$FetchRoomsBlocEvent>
    implements _$$FetchRoomsBlocEventCopyWith<$Res> {
  __$$FetchRoomsBlocEventCopyWithImpl(
      _$FetchRoomsBlocEvent _value, $Res Function(_$FetchRoomsBlocEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FetchRoomsBlocEvent implements FetchRoomsBlocEvent {
  const _$FetchRoomsBlocEvent();

  factory _$FetchRoomsBlocEvent.fromJson(Map<String, dynamic> json) =>
      _$$FetchRoomsBlocEventFromJson(json);

  @override
  String toString() {
    return 'RoomsBlocEvent.loadHotelInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchRoomsBlocEvent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadHotelInfo,
  }) {
    return loadHotelInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadHotelInfo,
  }) {
    return loadHotelInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadHotelInfo,
    required TResult orElse(),
  }) {
    if (loadHotelInfo != null) {
      return loadHotelInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchRoomsBlocEvent value) loadHotelInfo,
  }) {
    return loadHotelInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchRoomsBlocEvent value)? loadHotelInfo,
  }) {
    return loadHotelInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchRoomsBlocEvent value)? loadHotelInfo,
    required TResult orElse(),
  }) {
    if (loadHotelInfo != null) {
      return loadHotelInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchRoomsBlocEventToJson(
      this,
    );
  }
}

abstract class FetchRoomsBlocEvent implements RoomsBlocEvent {
  const factory FetchRoomsBlocEvent() = _$FetchRoomsBlocEvent;

  factory FetchRoomsBlocEvent.fromJson(Map<String, dynamic> json) =
      _$FetchRoomsBlocEvent.fromJson;
}
