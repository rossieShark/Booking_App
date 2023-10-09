// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelResponse _$HotelResponseFromJson(Map<String, dynamic> json) {
  return _HotelResponse.fromJson(json);
}

/// @nodoc
mixin _$HotelResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get adress => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_price')
  int get minPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_for_it')
  String get priceForIt => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotel get aboutTheHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelResponseCopyWith<HotelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelResponseCopyWith<$Res> {
  factory $HotelResponseCopyWith(
          HotelResponse value, $Res Function(HotelResponse) then) =
      _$HotelResponseCopyWithImpl<$Res, HotelResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      String adress,
      @JsonKey(name: 'minimal_price') int minPrice,
      @JsonKey(name: 'price_for_it') String priceForIt,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'image_urls') List<String> images,
      @JsonKey(name: 'about_the_hotel') AboutTheHotel aboutTheHotel});

  $AboutTheHotelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class _$HotelResponseCopyWithImpl<$Res, $Val extends HotelResponse>
    implements $HotelResponseCopyWith<$Res> {
  _$HotelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? minPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? images = null,
    Object? aboutTheHotel = null,
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
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutTheHotel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutTheHotelCopyWith<$Res> get aboutTheHotel {
    return $AboutTheHotelCopyWith<$Res>(_value.aboutTheHotel, (value) {
      return _then(_value.copyWith(aboutTheHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HotelResponseCopyWith<$Res>
    implements $HotelResponseCopyWith<$Res> {
  factory _$$_HotelResponseCopyWith(
          _$_HotelResponse value, $Res Function(_$_HotelResponse) then) =
      __$$_HotelResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String adress,
      @JsonKey(name: 'minimal_price') int minPrice,
      @JsonKey(name: 'price_for_it') String priceForIt,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'image_urls') List<String> images,
      @JsonKey(name: 'about_the_hotel') AboutTheHotel aboutTheHotel});

  @override
  $AboutTheHotelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class __$$_HotelResponseCopyWithImpl<$Res>
    extends _$HotelResponseCopyWithImpl<$Res, _$_HotelResponse>
    implements _$$_HotelResponseCopyWith<$Res> {
  __$$_HotelResponseCopyWithImpl(
      _$_HotelResponse _value, $Res Function(_$_HotelResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? minPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? images = null,
    Object? aboutTheHotel = null,
  }) {
    return _then(_$_HotelResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutTheHotel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotelResponse implements _HotelResponse {
  _$_HotelResponse(
      {required this.id,
      required this.name,
      required this.adress,
      @JsonKey(name: 'minimal_price') required this.minPrice,
      @JsonKey(name: 'price_for_it') required this.priceForIt,
      required this.rating,
      @JsonKey(name: 'rating_name') required this.ratingName,
      @JsonKey(name: 'image_urls') required final List<String> images,
      @JsonKey(name: 'about_the_hotel') required this.aboutTheHotel})
      : _images = images;

  factory _$_HotelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HotelResponseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String adress;
  @override
  @JsonKey(name: 'minimal_price')
  final int minPrice;
  @override
  @JsonKey(name: 'price_for_it')
  final String priceForIt;
  @override
  final int rating;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;
  final List<String> _images;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'about_the_hotel')
  final AboutTheHotel aboutTheHotel;

  @override
  String toString() {
    return 'HotelResponse(id: $id, name: $name, adress: $adress, minPrice: $minPrice, priceForIt: $priceForIt, rating: $rating, ratingName: $ratingName, images: $images, aboutTheHotel: $aboutTheHotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.priceForIt, priceForIt) ||
                other.priceForIt == priceForIt) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.aboutTheHotel, aboutTheHotel) ||
                other.aboutTheHotel == aboutTheHotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      adress,
      minPrice,
      priceForIt,
      rating,
      ratingName,
      const DeepCollectionEquality().hash(_images),
      aboutTheHotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelResponseCopyWith<_$_HotelResponse> get copyWith =>
      __$$_HotelResponseCopyWithImpl<_$_HotelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelResponseToJson(
      this,
    );
  }
}

abstract class _HotelResponse implements HotelResponse {
  factory _HotelResponse(
      {required final int id,
      required final String name,
      required final String adress,
      @JsonKey(name: 'minimal_price') required final int minPrice,
      @JsonKey(name: 'price_for_it') required final String priceForIt,
      required final int rating,
      @JsonKey(name: 'rating_name') required final String ratingName,
      @JsonKey(name: 'image_urls') required final List<String> images,
      @JsonKey(name: 'about_the_hotel')
      required final AboutTheHotel aboutTheHotel}) = _$_HotelResponse;

  factory _HotelResponse.fromJson(Map<String, dynamic> json) =
      _$_HotelResponse.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get adress;
  @override
  @JsonKey(name: 'minimal_price')
  int get minPrice;
  @override
  @JsonKey(name: 'price_for_it')
  String get priceForIt;
  @override
  int get rating;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get images;
  @override
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotel get aboutTheHotel;
  @override
  @JsonKey(ignore: true)
  _$$_HotelResponseCopyWith<_$_HotelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutTheHotel _$AboutTheHotelFromJson(Map<String, dynamic> json) {
  return _AboutTheHotel.fromJson(json);
}

/// @nodoc
mixin _$AboutTheHotel {
  String get description => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutTheHotelCopyWith<AboutTheHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutTheHotelCopyWith<$Res> {
  factory $AboutTheHotelCopyWith(
          AboutTheHotel value, $Res Function(AboutTheHotel) then) =
      _$AboutTheHotelCopyWithImpl<$Res, AboutTheHotel>;
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class _$AboutTheHotelCopyWithImpl<$Res, $Val extends AboutTheHotel>
    implements $AboutTheHotelCopyWith<$Res> {
  _$AboutTheHotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AboutTheHotelCopyWith<$Res>
    implements $AboutTheHotelCopyWith<$Res> {
  factory _$$_AboutTheHotelCopyWith(
          _$_AboutTheHotel value, $Res Function(_$_AboutTheHotel) then) =
      __$$_AboutTheHotelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> peculiarities});
}

/// @nodoc
class __$$_AboutTheHotelCopyWithImpl<$Res>
    extends _$AboutTheHotelCopyWithImpl<$Res, _$_AboutTheHotel>
    implements _$$_AboutTheHotelCopyWith<$Res> {
  __$$_AboutTheHotelCopyWithImpl(
      _$_AboutTheHotel _value, $Res Function(_$_AboutTheHotel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_$_AboutTheHotel(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AboutTheHotel implements _AboutTheHotel {
  _$_AboutTheHotel(
      {required this.description, required final List<String> peculiarities})
      : _peculiarities = peculiarities;

  factory _$_AboutTheHotel.fromJson(Map<String, dynamic> json) =>
      _$$_AboutTheHotelFromJson(json);

  @override
  final String description;
  final List<String> _peculiarities;
  @override
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  @override
  String toString() {
    return 'AboutTheHotel(description: $description, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutTheHotel &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutTheHotelCopyWith<_$_AboutTheHotel> get copyWith =>
      __$$_AboutTheHotelCopyWithImpl<_$_AboutTheHotel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutTheHotelToJson(
      this,
    );
  }
}

abstract class _AboutTheHotel implements AboutTheHotel {
  factory _AboutTheHotel(
      {required final String description,
      required final List<String> peculiarities}) = _$_AboutTheHotel;

  factory _AboutTheHotel.fromJson(Map<String, dynamic> json) =
      _$_AboutTheHotel.fromJson;

  @override
  String get description;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$_AboutTheHotelCopyWith<_$_AboutTheHotel> get copyWith =>
      throw _privateConstructorUsedError;
}
