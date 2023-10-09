// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingEvent _$BookingEventFromJson(Map<String, dynamic> json) {
  return FetchBookingEvent.fromJson(json);
}

/// @nodoc
mixin _$BookingEvent {
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
    required TResult Function(FetchBookingEvent value) loadHotelInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBookingEvent value)? loadHotelInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBookingEvent value)? loadHotelInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchBookingEventCopyWith<$Res> {
  factory _$$FetchBookingEventCopyWith(
          _$FetchBookingEvent value, $Res Function(_$FetchBookingEvent) then) =
      __$$FetchBookingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBookingEventCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$FetchBookingEvent>
    implements _$$FetchBookingEventCopyWith<$Res> {
  __$$FetchBookingEventCopyWithImpl(
      _$FetchBookingEvent _value, $Res Function(_$FetchBookingEvent) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FetchBookingEvent implements FetchBookingEvent {
  const _$FetchBookingEvent();

  factory _$FetchBookingEvent.fromJson(Map<String, dynamic> json) =>
      _$$FetchBookingEventFromJson(json);

  @override
  String toString() {
    return 'BookingEvent.loadHotelInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBookingEvent);
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
    required TResult Function(FetchBookingEvent value) loadHotelInfo,
  }) {
    return loadHotelInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBookingEvent value)? loadHotelInfo,
  }) {
    return loadHotelInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBookingEvent value)? loadHotelInfo,
    required TResult orElse(),
  }) {
    if (loadHotelInfo != null) {
      return loadHotelInfo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchBookingEventToJson(
      this,
    );
  }
}

abstract class FetchBookingEvent implements BookingEvent {
  const factory FetchBookingEvent() = _$FetchBookingEvent;

  factory FetchBookingEvent.fromJson(Map<String, dynamic> json) =
      _$FetchBookingEvent.fromJson;
}
