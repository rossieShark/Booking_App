// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomsBlocState _$RoomsBlocStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return LoadingRoomsBlocState.fromJson(json);
    case 'noResults':
      return NoResultsRoomsBlocState.fromJson(json);
    case 'loaded':
      return LoadedRoomsBlocState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RoomsBlocState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RoomsBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(List<Rooms> rooms) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(List<Rooms> rooms)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(List<Rooms> rooms)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingRoomsBlocState value) loading,
    required TResult Function(NoResultsRoomsBlocState value) noResults,
    required TResult Function(LoadedRoomsBlocState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingRoomsBlocState value)? loading,
    TResult? Function(NoResultsRoomsBlocState value)? noResults,
    TResult? Function(LoadedRoomsBlocState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingRoomsBlocState value)? loading,
    TResult Function(NoResultsRoomsBlocState value)? noResults,
    TResult Function(LoadedRoomsBlocState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsBlocStateCopyWith<$Res> {
  factory $RoomsBlocStateCopyWith(
          RoomsBlocState value, $Res Function(RoomsBlocState) then) =
      _$RoomsBlocStateCopyWithImpl<$Res, RoomsBlocState>;
}

/// @nodoc
class _$RoomsBlocStateCopyWithImpl<$Res, $Val extends RoomsBlocState>
    implements $RoomsBlocStateCopyWith<$Res> {
  _$RoomsBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingRoomsBlocStateCopyWith<$Res> {
  factory _$$LoadingRoomsBlocStateCopyWith(_$LoadingRoomsBlocState value,
          $Res Function(_$LoadingRoomsBlocState) then) =
      __$$LoadingRoomsBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingRoomsBlocStateCopyWithImpl<$Res>
    extends _$RoomsBlocStateCopyWithImpl<$Res, _$LoadingRoomsBlocState>
    implements _$$LoadingRoomsBlocStateCopyWith<$Res> {
  __$$LoadingRoomsBlocStateCopyWithImpl(_$LoadingRoomsBlocState _value,
      $Res Function(_$LoadingRoomsBlocState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoadingRoomsBlocState implements LoadingRoomsBlocState {
  const _$LoadingRoomsBlocState({final String? $type})
      : $type = $type ?? 'loading';

  factory _$LoadingRoomsBlocState.fromJson(Map<String, dynamic> json) =>
      _$$LoadingRoomsBlocStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RoomsBlocState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(List<Rooms> rooms) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(List<Rooms> rooms)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(List<Rooms> rooms)? loaded,
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
    required TResult Function(LoadingRoomsBlocState value) loading,
    required TResult Function(NoResultsRoomsBlocState value) noResults,
    required TResult Function(LoadedRoomsBlocState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingRoomsBlocState value)? loading,
    TResult? Function(NoResultsRoomsBlocState value)? noResults,
    TResult? Function(LoadedRoomsBlocState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingRoomsBlocState value)? loading,
    TResult Function(NoResultsRoomsBlocState value)? noResults,
    TResult Function(LoadedRoomsBlocState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingRoomsBlocStateToJson(
      this,
    );
  }
}

abstract class LoadingRoomsBlocState implements RoomsBlocState {
  const factory LoadingRoomsBlocState() = _$LoadingRoomsBlocState;

  factory LoadingRoomsBlocState.fromJson(Map<String, dynamic> json) =
      _$LoadingRoomsBlocState.fromJson;
}

/// @nodoc
abstract class _$$NoResultsRoomsBlocStateCopyWith<$Res> {
  factory _$$NoResultsRoomsBlocStateCopyWith(_$NoResultsRoomsBlocState value,
          $Res Function(_$NoResultsRoomsBlocState) then) =
      __$$NoResultsRoomsBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoResultsRoomsBlocStateCopyWithImpl<$Res>
    extends _$RoomsBlocStateCopyWithImpl<$Res, _$NoResultsRoomsBlocState>
    implements _$$NoResultsRoomsBlocStateCopyWith<$Res> {
  __$$NoResultsRoomsBlocStateCopyWithImpl(_$NoResultsRoomsBlocState _value,
      $Res Function(_$NoResultsRoomsBlocState) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NoResultsRoomsBlocState implements NoResultsRoomsBlocState {
  const _$NoResultsRoomsBlocState({final String? $type})
      : $type = $type ?? 'noResults';

  factory _$NoResultsRoomsBlocState.fromJson(Map<String, dynamic> json) =>
      _$$NoResultsRoomsBlocStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RoomsBlocState.noResults()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(List<Rooms> rooms) loaded,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(List<Rooms> rooms)? loaded,
  }) {
    return noResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(List<Rooms> rooms)? loaded,
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
    required TResult Function(LoadingRoomsBlocState value) loading,
    required TResult Function(NoResultsRoomsBlocState value) noResults,
    required TResult Function(LoadedRoomsBlocState value) loaded,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingRoomsBlocState value)? loading,
    TResult? Function(NoResultsRoomsBlocState value)? noResults,
    TResult? Function(LoadedRoomsBlocState value)? loaded,
  }) {
    return noResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingRoomsBlocState value)? loading,
    TResult Function(NoResultsRoomsBlocState value)? noResults,
    TResult Function(LoadedRoomsBlocState value)? loaded,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoResultsRoomsBlocStateToJson(
      this,
    );
  }
}

abstract class NoResultsRoomsBlocState implements RoomsBlocState {
  const factory NoResultsRoomsBlocState() = _$NoResultsRoomsBlocState;

  factory NoResultsRoomsBlocState.fromJson(Map<String, dynamic> json) =
      _$NoResultsRoomsBlocState.fromJson;
}

/// @nodoc
abstract class _$$LoadedRoomsBlocStateCopyWith<$Res> {
  factory _$$LoadedRoomsBlocStateCopyWith(_$LoadedRoomsBlocState value,
          $Res Function(_$LoadedRoomsBlocState) then) =
      __$$LoadedRoomsBlocStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Rooms> rooms});
}

/// @nodoc
class __$$LoadedRoomsBlocStateCopyWithImpl<$Res>
    extends _$RoomsBlocStateCopyWithImpl<$Res, _$LoadedRoomsBlocState>
    implements _$$LoadedRoomsBlocStateCopyWith<$Res> {
  __$$LoadedRoomsBlocStateCopyWithImpl(_$LoadedRoomsBlocState _value,
      $Res Function(_$LoadedRoomsBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$LoadedRoomsBlocState(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Rooms>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadedRoomsBlocState implements LoadedRoomsBlocState {
  const _$LoadedRoomsBlocState(
      {required final List<Rooms> rooms, final String? $type})
      : _rooms = rooms,
        $type = $type ?? 'loaded';

  factory _$LoadedRoomsBlocState.fromJson(Map<String, dynamic> json) =>
      _$$LoadedRoomsBlocStateFromJson(json);

  final List<Rooms> _rooms;
  @override
  List<Rooms> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RoomsBlocState.loaded(rooms: $rooms)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedRoomsBlocStateCopyWith<_$LoadedRoomsBlocState> get copyWith =>
      __$$LoadedRoomsBlocStateCopyWithImpl<_$LoadedRoomsBlocState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function(List<Rooms> rooms) loaded,
  }) {
    return loaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function(List<Rooms> rooms)? loaded,
  }) {
    return loaded?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function(List<Rooms> rooms)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingRoomsBlocState value) loading,
    required TResult Function(NoResultsRoomsBlocState value) noResults,
    required TResult Function(LoadedRoomsBlocState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingRoomsBlocState value)? loading,
    TResult? Function(NoResultsRoomsBlocState value)? noResults,
    TResult? Function(LoadedRoomsBlocState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingRoomsBlocState value)? loading,
    TResult Function(NoResultsRoomsBlocState value)? noResults,
    TResult Function(LoadedRoomsBlocState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadedRoomsBlocStateToJson(
      this,
    );
  }
}

abstract class LoadedRoomsBlocState implements RoomsBlocState {
  const factory LoadedRoomsBlocState({required final List<Rooms> rooms}) =
      _$LoadedRoomsBlocState;

  factory LoadedRoomsBlocState.fromJson(Map<String, dynamic> json) =
      _$LoadedRoomsBlocState.fromJson;

  List<Rooms> get rooms;
  @JsonKey(ignore: true)
  _$$LoadedRoomsBlocStateCopyWith<_$LoadedRoomsBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
