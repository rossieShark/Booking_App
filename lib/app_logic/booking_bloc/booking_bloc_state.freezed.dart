// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingState _$BookingStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return LoadingBookingState.fromJson(json);
    case 'noResults':
      return NoResultsBookingState.fromJson(json);
    case 'loaded':
      return LoadedBookingState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BookingState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(BookingResponse data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(BookingResponse data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(BookingResponse data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBookingState value) loading,
    required TResult Function(NoResultsBookingState value) noResults,
    required TResult Function(LoadedBookingState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBookingState value)? loading,
    TResult? Function(NoResultsBookingState value)? noResults,
    TResult? Function(LoadedBookingState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBookingState value)? loading,
    TResult Function(NoResultsBookingState value)? noResults,
    TResult Function(LoadedBookingState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingBookingStateCopyWith<$Res> {
  factory _$$LoadingBookingStateCopyWith(_$LoadingBookingState value,
          $Res Function(_$LoadingBookingState) then) =
      __$$LoadingBookingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingBookingStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$LoadingBookingState>
    implements _$$LoadingBookingStateCopyWith<$Res> {
  __$$LoadingBookingStateCopyWithImpl(
      _$LoadingBookingState _value, $Res Function(_$LoadingBookingState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoadingBookingState implements LoadingBookingState {
  const _$LoadingBookingState({final String? $type})
      : $type = $type ?? 'loading';

  factory _$LoadingBookingState.fromJson(Map<String, dynamic> json) =>
      _$$LoadingBookingStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BookingState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(BookingResponse data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(BookingResponse data)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(BookingResponse data)? loaded,
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
    required TResult Function(LoadingBookingState value) loading,
    required TResult Function(NoResultsBookingState value) noResults,
    required TResult Function(LoadedBookingState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBookingState value)? loading,
    TResult? Function(NoResultsBookingState value)? noResults,
    TResult? Function(LoadedBookingState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBookingState value)? loading,
    TResult Function(NoResultsBookingState value)? noResults,
    TResult Function(LoadedBookingState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingBookingStateToJson(
      this,
    );
  }
}

abstract class LoadingBookingState implements BookingState {
  const factory LoadingBookingState() = _$LoadingBookingState;

  factory LoadingBookingState.fromJson(Map<String, dynamic> json) =
      _$LoadingBookingState.fromJson;
}

/// @nodoc
abstract class _$$NoResultsBookingStateCopyWith<$Res> {
  factory _$$NoResultsBookingStateCopyWith(_$NoResultsBookingState value,
          $Res Function(_$NoResultsBookingState) then) =
      __$$NoResultsBookingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoResultsBookingStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$NoResultsBookingState>
    implements _$$NoResultsBookingStateCopyWith<$Res> {
  __$$NoResultsBookingStateCopyWithImpl(_$NoResultsBookingState _value,
      $Res Function(_$NoResultsBookingState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NoResultsBookingState implements NoResultsBookingState {
  const _$NoResultsBookingState({final String? $type})
      : $type = $type ?? 'noResults';

  factory _$NoResultsBookingState.fromJson(Map<String, dynamic> json) =>
      _$$NoResultsBookingStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BookingState.noResults()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(BookingResponse data) loaded,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(BookingResponse data)? loaded,
  }) {
    return noResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(BookingResponse data)? loaded,
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
    required TResult Function(LoadingBookingState value) loading,
    required TResult Function(NoResultsBookingState value) noResults,
    required TResult Function(LoadedBookingState value) loaded,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBookingState value)? loading,
    TResult? Function(NoResultsBookingState value)? noResults,
    TResult? Function(LoadedBookingState value)? loaded,
  }) {
    return noResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBookingState value)? loading,
    TResult Function(NoResultsBookingState value)? noResults,
    TResult Function(LoadedBookingState value)? loaded,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoResultsBookingStateToJson(
      this,
    );
  }
}

abstract class NoResultsBookingState implements BookingState {
  const factory NoResultsBookingState() = _$NoResultsBookingState;

  factory NoResultsBookingState.fromJson(Map<String, dynamic> json) =
      _$NoResultsBookingState.fromJson;
}

/// @nodoc
abstract class _$$LoadedBookingStateCopyWith<$Res> {
  factory _$$LoadedBookingStateCopyWith(_$LoadedBookingState value,
          $Res Function(_$LoadedBookingState) then) =
      __$$LoadedBookingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingResponse data});

  $BookingResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedBookingStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$LoadedBookingState>
    implements _$$LoadedBookingStateCopyWith<$Res> {
  __$$LoadedBookingStateCopyWithImpl(
      _$LoadedBookingState _value, $Res Function(_$LoadedBookingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedBookingState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingResponseCopyWith<$Res> get data {
    return $BookingResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadedBookingState implements LoadedBookingState {
  const _$LoadedBookingState({required this.data, final String? $type})
      : $type = $type ?? 'loaded';

  factory _$LoadedBookingState.fromJson(Map<String, dynamic> json) =>
      _$$LoadedBookingStateFromJson(json);

  @override
  final BookingResponse data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BookingState.loaded(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedBookingStateCopyWith<_$LoadedBookingState> get copyWith =>
      __$$LoadedBookingStateCopyWithImpl<_$LoadedBookingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(BookingResponse data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(BookingResponse data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(BookingResponse data)? loaded,
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
    required TResult Function(LoadingBookingState value) loading,
    required TResult Function(NoResultsBookingState value) noResults,
    required TResult Function(LoadedBookingState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBookingState value)? loading,
    TResult? Function(NoResultsBookingState value)? noResults,
    TResult? Function(LoadedBookingState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBookingState value)? loading,
    TResult Function(NoResultsBookingState value)? noResults,
    TResult Function(LoadedBookingState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadedBookingStateToJson(
      this,
    );
  }
}

abstract class LoadedBookingState implements BookingState {
  const factory LoadedBookingState({required final BookingResponse data}) =
      _$LoadedBookingState;

  factory LoadedBookingState.fromJson(Map<String, dynamic> json) =
      _$LoadedBookingState.fromJson;

  BookingResponse get data;
  @JsonKey(ignore: true)
  _$$LoadedBookingStateCopyWith<_$LoadedBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
