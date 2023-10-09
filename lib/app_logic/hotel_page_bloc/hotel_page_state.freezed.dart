// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelState _$HotelStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return LoadingHotelState.fromJson(json);
    case 'noResults':
      return NoResultsHotelState.fromJson(json);
    case 'loaded':
      return LoadedHotelState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HotelState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HotelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(HotelResponse data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(HotelResponse data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(HotelResponse data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHotelState value) loading,
    required TResult Function(NoResultsHotelState value) noResults,
    required TResult Function(LoadedHotelState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHotelState value)? loading,
    TResult? Function(NoResultsHotelState value)? noResults,
    TResult? Function(LoadedHotelState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHotelState value)? loading,
    TResult Function(NoResultsHotelState value)? noResults,
    TResult Function(LoadedHotelState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelStateCopyWith<$Res> {
  factory $HotelStateCopyWith(
          HotelState value, $Res Function(HotelState) then) =
      _$HotelStateCopyWithImpl<$Res, HotelState>;
}

/// @nodoc
class _$HotelStateCopyWithImpl<$Res, $Val extends HotelState>
    implements $HotelStateCopyWith<$Res> {
  _$HotelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingHotelStateCopyWith<$Res> {
  factory _$$LoadingHotelStateCopyWith(
          _$LoadingHotelState value, $Res Function(_$LoadingHotelState) then) =
      __$$LoadingHotelStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHotelStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$LoadingHotelState>
    implements _$$LoadingHotelStateCopyWith<$Res> {
  __$$LoadingHotelStateCopyWithImpl(
      _$LoadingHotelState _value, $Res Function(_$LoadingHotelState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoadingHotelState implements LoadingHotelState {
  const _$LoadingHotelState({final String? $type}) : $type = $type ?? 'loading';

  factory _$LoadingHotelState.fromJson(Map<String, dynamic> json) =>
      _$$LoadingHotelStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HotelState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(HotelResponse data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(HotelResponse data)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(HotelResponse data)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHotelState value) loading,
    required TResult Function(NoResultsHotelState value) noResults,
    required TResult Function(LoadedHotelState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHotelState value)? loading,
    TResult? Function(NoResultsHotelState value)? noResults,
    TResult? Function(LoadedHotelState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHotelState value)? loading,
    TResult Function(NoResultsHotelState value)? noResults,
    TResult Function(LoadedHotelState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingHotelStateToJson(
      this,
    );
  }
}

abstract class LoadingHotelState implements HotelState {
  const factory LoadingHotelState() = _$LoadingHotelState;

  factory LoadingHotelState.fromJson(Map<String, dynamic> json) =
      _$LoadingHotelState.fromJson;
}

/// @nodoc
abstract class _$$NoResultsHotelStateCopyWith<$Res> {
  factory _$$NoResultsHotelStateCopyWith(_$NoResultsHotelState value,
          $Res Function(_$NoResultsHotelState) then) =
      __$$NoResultsHotelStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoResultsHotelStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$NoResultsHotelState>
    implements _$$NoResultsHotelStateCopyWith<$Res> {
  __$$NoResultsHotelStateCopyWithImpl(
      _$NoResultsHotelState _value, $Res Function(_$NoResultsHotelState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NoResultsHotelState implements NoResultsHotelState {
  const _$NoResultsHotelState({final String? $type})
      : $type = $type ?? 'noResults';

  factory _$NoResultsHotelState.fromJson(Map<String, dynamic> json) =>
      _$$NoResultsHotelStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HotelState.noResults()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(HotelResponse data) loaded,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(HotelResponse data)? loaded,
  }) {
    return noResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(HotelResponse data)? loaded,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHotelState value) loading,
    required TResult Function(NoResultsHotelState value) noResults,
    required TResult Function(LoadedHotelState value) loaded,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHotelState value)? loading,
    TResult? Function(NoResultsHotelState value)? noResults,
    TResult? Function(LoadedHotelState value)? loaded,
  }) {
    return noResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHotelState value)? loading,
    TResult Function(NoResultsHotelState value)? noResults,
    TResult Function(LoadedHotelState value)? loaded,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoResultsHotelStateToJson(
      this,
    );
  }
}

abstract class NoResultsHotelState implements HotelState {
  const factory NoResultsHotelState() = _$NoResultsHotelState;

  factory NoResultsHotelState.fromJson(Map<String, dynamic> json) =
      _$NoResultsHotelState.fromJson;
}

/// @nodoc
abstract class _$$LoadedHotelStateCopyWith<$Res> {
  factory _$$LoadedHotelStateCopyWith(
          _$LoadedHotelState value, $Res Function(_$LoadedHotelState) then) =
      __$$LoadedHotelStateCopyWithImpl<$Res>;
  @useResult
  $Res call({HotelResponse data});

  $HotelResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedHotelStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$LoadedHotelState>
    implements _$$LoadedHotelStateCopyWith<$Res> {
  __$$LoadedHotelStateCopyWithImpl(
      _$LoadedHotelState _value, $Res Function(_$LoadedHotelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedHotelState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HotelResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelResponseCopyWith<$Res> get data {
    return $HotelResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadedHotelState implements LoadedHotelState {
  const _$LoadedHotelState({required this.data, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$LoadedHotelState.fromJson(Map<String, dynamic> json) =>
      _$$LoadedHotelStateFromJson(json);

  @override
  final HotelResponse data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HotelState.loaded(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedHotelStateCopyWith<_$LoadedHotelState> get copyWith =>
      __$$LoadedHotelStateCopyWithImpl<_$LoadedHotelState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(HotelResponse data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(HotelResponse data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(HotelResponse data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHotelState value) loading,
    required TResult Function(NoResultsHotelState value) noResults,
    required TResult Function(LoadedHotelState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHotelState value)? loading,
    TResult? Function(NoResultsHotelState value)? noResults,
    TResult? Function(LoadedHotelState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHotelState value)? loading,
    TResult Function(NoResultsHotelState value)? noResults,
    TResult Function(LoadedHotelState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadedHotelStateToJson(
      this,
    );
  }
}

abstract class LoadedHotelState implements HotelState {
  const factory LoadedHotelState({required final HotelResponse data}) =
      _$LoadedHotelState;

  factory LoadedHotelState.fromJson(Map<String, dynamic> json) =
      _$LoadedHotelState.fromJson;

  HotelResponse get data;
  @JsonKey(ignore: true)
  _$$LoadedHotelStateCopyWith<_$LoadedHotelState> get copyWith =>
      throw _privateConstructorUsedError;
}
