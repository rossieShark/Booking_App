// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomResponse _$RoomResponseFromJson(Map<String, dynamic> json) {
  return _RoomResponse.fromJson(json);
}

/// @nodoc
mixin _$RoomResponse {
  List<Rooms> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomResponseCopyWith<RoomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomResponseCopyWith<$Res> {
  factory $RoomResponseCopyWith(
          RoomResponse value, $Res Function(RoomResponse) then) =
      _$RoomResponseCopyWithImpl<$Res, RoomResponse>;
  @useResult
  $Res call({List<Rooms> rooms});
}

/// @nodoc
class _$RoomResponseCopyWithImpl<$Res, $Val extends RoomResponse>
    implements $RoomResponseCopyWith<$Res> {
  _$RoomResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Rooms>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomResponseCopyWith<$Res>
    implements $RoomResponseCopyWith<$Res> {
  factory _$$_RoomResponseCopyWith(
          _$_RoomResponse value, $Res Function(_$_RoomResponse) then) =
      __$$_RoomResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Rooms> rooms});
}

/// @nodoc
class __$$_RoomResponseCopyWithImpl<$Res>
    extends _$RoomResponseCopyWithImpl<$Res, _$_RoomResponse>
    implements _$$_RoomResponseCopyWith<$Res> {
  __$$_RoomResponseCopyWithImpl(
      _$_RoomResponse _value, $Res Function(_$_RoomResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$_RoomResponse(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Rooms>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomResponse implements _RoomResponse {
  _$_RoomResponse({required final List<Rooms> rooms}) : _rooms = rooms;

  factory _$_RoomResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RoomResponseFromJson(json);

  final List<Rooms> _rooms;
  @override
  List<Rooms> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomResponse(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomResponse &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomResponseCopyWith<_$_RoomResponse> get copyWith =>
      __$$_RoomResponseCopyWithImpl<_$_RoomResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomResponseToJson(
      this,
    );
  }
}

abstract class _RoomResponse implements RoomResponse {
  factory _RoomResponse({required final List<Rooms> rooms}) = _$_RoomResponse;

  factory _RoomResponse.fromJson(Map<String, dynamic> json) =
      _$_RoomResponse.fromJson;

  @override
  List<Rooms> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_RoomResponseCopyWith<_$_RoomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Rooms _$RoomsFromJson(Map<String, dynamic> json) {
  return _Rooms.fromJson(json);
}

/// @nodoc
mixin _$Rooms {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per')
  String get pricePer => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get images => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsCopyWith<Rooms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsCopyWith<$Res> {
  factory $RoomsCopyWith(Rooms value, $Res Function(Rooms) then) =
      _$RoomsCopyWithImpl<$Res, Rooms>;
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      @JsonKey(name: 'price_per') String pricePer,
      @JsonKey(name: 'image_urls') List<String> images,
      List<String> peculiarities});
}

/// @nodoc
class _$RoomsCopyWithImpl<$Res, $Val extends Rooms>
    implements $RoomsCopyWith<$Res> {
  _$RoomsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? pricePer = null,
    Object? images = null,
    Object? peculiarities = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomsCopyWith<$Res> implements $RoomsCopyWith<$Res> {
  factory _$$_RoomsCopyWith(_$_Rooms value, $Res Function(_$_Rooms) then) =
      __$$_RoomsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      @JsonKey(name: 'price_per') String pricePer,
      @JsonKey(name: 'image_urls') List<String> images,
      List<String> peculiarities});
}

/// @nodoc
class __$$_RoomsCopyWithImpl<$Res> extends _$RoomsCopyWithImpl<$Res, _$_Rooms>
    implements _$$_RoomsCopyWith<$Res> {
  __$$_RoomsCopyWithImpl(_$_Rooms _value, $Res Function(_$_Rooms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? pricePer = null,
    Object? images = null,
    Object? peculiarities = null,
  }) {
    return _then(_$_Rooms(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rooms implements _Rooms {
  _$_Rooms(
      {required this.id,
      required this.name,
      required this.price,
      @JsonKey(name: 'price_per') required this.pricePer,
      @JsonKey(name: 'image_urls') required final List<String> images,
      required final List<String> peculiarities})
      : _images = images,
        _peculiarities = peculiarities;

  factory _$_Rooms.fromJson(Map<String, dynamic> json) =>
      _$$_RoomsFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  @JsonKey(name: 'price_per')
  final String pricePer;
  final List<String> _images;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String> _peculiarities;
  @override
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  @override
  String toString() {
    return 'Rooms(id: $id, name: $name, price: $price, pricePer: $pricePer, images: $images, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rooms &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pricePer, pricePer) ||
                other.pricePer == pricePer) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      pricePer,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomsCopyWith<_$_Rooms> get copyWith =>
      __$$_RoomsCopyWithImpl<_$_Rooms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomsToJson(
      this,
    );
  }
}

abstract class _Rooms implements Rooms {
  factory _Rooms(
      {required final int id,
      required final String name,
      required final int price,
      @JsonKey(name: 'price_per') required final String pricePer,
      @JsonKey(name: 'image_urls') required final List<String> images,
      required final List<String> peculiarities}) = _$_Rooms;

  factory _Rooms.fromJson(Map<String, dynamic> json) = _$_Rooms.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(name: 'price_per')
  String get pricePer;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get images;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$_RoomsCopyWith<_$_Rooms> get copyWith =>
      throw _privateConstructorUsedError;
}
