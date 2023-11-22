// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchInDogList,
    required TResult Function() generateRandomDog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchInDogList,
    TResult? Function()? generateRandomDog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchInDogList,
    TResult Function()? generateRandomDog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchInDogList value) searchInDogList,
    required TResult Function(_GenerateRandomDog value) generateRandomDog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchInDogList value)? searchInDogList,
    TResult? Function(_GenerateRandomDog value)? generateRandomDog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchInDogList value)? searchInDogList,
    TResult Function(_GenerateRandomDog value)? generateRandomDog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchInDogList,
    required TResult Function() generateRandomDog,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchInDogList,
    TResult? Function()? generateRandomDog,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchInDogList,
    TResult Function()? generateRandomDog,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchInDogList value) searchInDogList,
    required TResult Function(_GenerateRandomDog value) generateRandomDog,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchInDogList value)? searchInDogList,
    TResult? Function(_GenerateRandomDog value)? generateRandomDog,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchInDogList value)? searchInDogList,
    TResult Function(_GenerateRandomDog value)? generateRandomDog,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchInDogListImplCopyWith<$Res> {
  factory _$$SearchInDogListImplCopyWith(_$SearchInDogListImpl value,
          $Res Function(_$SearchInDogListImpl) then) =
      __$$SearchInDogListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchInDogListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchInDogListImpl>
    implements _$$SearchInDogListImplCopyWith<$Res> {
  __$$SearchInDogListImplCopyWithImpl(
      _$SearchInDogListImpl _value, $Res Function(_$SearchInDogListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchInDogListImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchInDogListImpl implements _SearchInDogList {
  const _$SearchInDogListImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'HomeEvent.searchInDogList(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInDogListImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchInDogListImplCopyWith<_$SearchInDogListImpl> get copyWith =>
      __$$SearchInDogListImplCopyWithImpl<_$SearchInDogListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchInDogList,
    required TResult Function() generateRandomDog,
  }) {
    return searchInDogList(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchInDogList,
    TResult? Function()? generateRandomDog,
  }) {
    return searchInDogList?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchInDogList,
    TResult Function()? generateRandomDog,
    required TResult orElse(),
  }) {
    if (searchInDogList != null) {
      return searchInDogList(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchInDogList value) searchInDogList,
    required TResult Function(_GenerateRandomDog value) generateRandomDog,
  }) {
    return searchInDogList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchInDogList value)? searchInDogList,
    TResult? Function(_GenerateRandomDog value)? generateRandomDog,
  }) {
    return searchInDogList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchInDogList value)? searchInDogList,
    TResult Function(_GenerateRandomDog value)? generateRandomDog,
    required TResult orElse(),
  }) {
    if (searchInDogList != null) {
      return searchInDogList(this);
    }
    return orElse();
  }
}

abstract class _SearchInDogList implements HomeEvent {
  const factory _SearchInDogList(final String query) = _$SearchInDogListImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchInDogListImplCopyWith<_$SearchInDogListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateRandomDogImplCopyWith<$Res> {
  factory _$$GenerateRandomDogImplCopyWith(_$GenerateRandomDogImpl value,
          $Res Function(_$GenerateRandomDogImpl) then) =
      __$$GenerateRandomDogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenerateRandomDogImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GenerateRandomDogImpl>
    implements _$$GenerateRandomDogImplCopyWith<$Res> {
  __$$GenerateRandomDogImplCopyWithImpl(_$GenerateRandomDogImpl _value,
      $Res Function(_$GenerateRandomDogImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenerateRandomDogImpl implements _GenerateRandomDog {
  const _$GenerateRandomDogImpl();

  @override
  String toString() {
    return 'HomeEvent.generateRandomDog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenerateRandomDogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) searchInDogList,
    required TResult Function() generateRandomDog,
  }) {
    return generateRandomDog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? searchInDogList,
    TResult? Function()? generateRandomDog,
  }) {
    return generateRandomDog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? searchInDogList,
    TResult Function()? generateRandomDog,
    required TResult orElse(),
  }) {
    if (generateRandomDog != null) {
      return generateRandomDog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchInDogList value) searchInDogList,
    required TResult Function(_GenerateRandomDog value) generateRandomDog,
  }) {
    return generateRandomDog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchInDogList value)? searchInDogList,
    TResult? Function(_GenerateRandomDog value)? generateRandomDog,
  }) {
    return generateRandomDog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchInDogList value)? searchInDogList,
    TResult Function(_GenerateRandomDog value)? generateRandomDog,
    required TResult orElse(),
  }) {
    if (generateRandomDog != null) {
      return generateRandomDog(this);
    }
    return orElse();
  }
}

abstract class _GenerateRandomDog implements HomeEvent {
  const factory _GenerateRandomDog() = _$GenerateRandomDogImpl;
}

/// @nodoc
mixin _$HomeState {
  List<DogModel> get dogList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DogModel> dogList) initial,
    required TResult Function(List<DogModel> dogList) searched,
    required TResult Function(List<DogModel> dogList, String url) generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DogModel> dogList)? initial,
    TResult? Function(List<DogModel> dogList)? searched,
    TResult? Function(List<DogModel> dogList, String url)? generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DogModel> dogList)? initial,
    TResult Function(List<DogModel> dogList)? searched,
    TResult Function(List<DogModel> dogList, String url)? generated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Generated value) generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Generated value)? generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searched value)? searched,
    TResult Function(_Generated value)? generated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<DogModel> dogList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dogList = null,
  }) {
    return _then(_value.copyWith(
      dogList: null == dogList
          ? _value.dogList
          : dogList // ignore: cast_nullable_to_non_nullable
              as List<DogModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DogModel> dogList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dogList = null,
  }) {
    return _then(_$InitialImpl(
      dogList: null == dogList
          ? _value._dogList
          : dogList // ignore: cast_nullable_to_non_nullable
              as List<DogModel>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required final List<DogModel> dogList})
      : _dogList = dogList;

  final List<DogModel> _dogList;
  @override
  List<DogModel> get dogList {
    if (_dogList is EqualUnmodifiableListView) return _dogList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dogList);
  }

  @override
  String toString() {
    return 'HomeState.initial(dogList: $dogList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._dogList, _dogList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dogList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DogModel> dogList) initial,
    required TResult Function(List<DogModel> dogList) searched,
    required TResult Function(List<DogModel> dogList, String url) generated,
  }) {
    return initial(dogList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DogModel> dogList)? initial,
    TResult? Function(List<DogModel> dogList)? searched,
    TResult? Function(List<DogModel> dogList, String url)? generated,
  }) {
    return initial?.call(dogList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DogModel> dogList)? initial,
    TResult Function(List<DogModel> dogList)? searched,
    TResult Function(List<DogModel> dogList, String url)? generated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(dogList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Generated value) generated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Generated value)? generated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searched value)? searched,
    TResult Function(_Generated value)? generated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial({required final List<DogModel> dogList}) =
      _$InitialImpl;

  @override
  List<DogModel> get dogList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchedImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$SearchedImplCopyWith(
          _$SearchedImpl value, $Res Function(_$SearchedImpl) then) =
      __$$SearchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DogModel> dogList});
}

/// @nodoc
class __$$SearchedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SearchedImpl>
    implements _$$SearchedImplCopyWith<$Res> {
  __$$SearchedImplCopyWithImpl(
      _$SearchedImpl _value, $Res Function(_$SearchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dogList = null,
  }) {
    return _then(_$SearchedImpl(
      dogList: null == dogList
          ? _value._dogList
          : dogList // ignore: cast_nullable_to_non_nullable
              as List<DogModel>,
    ));
  }
}

/// @nodoc

class _$SearchedImpl implements _Searched {
  const _$SearchedImpl({required final List<DogModel> dogList})
      : _dogList = dogList;

  final List<DogModel> _dogList;
  @override
  List<DogModel> get dogList {
    if (_dogList is EqualUnmodifiableListView) return _dogList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dogList);
  }

  @override
  String toString() {
    return 'HomeState.searched(dogList: $dogList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedImpl &&
            const DeepCollectionEquality().equals(other._dogList, _dogList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dogList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedImplCopyWith<_$SearchedImpl> get copyWith =>
      __$$SearchedImplCopyWithImpl<_$SearchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DogModel> dogList) initial,
    required TResult Function(List<DogModel> dogList) searched,
    required TResult Function(List<DogModel> dogList, String url) generated,
  }) {
    return searched(dogList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DogModel> dogList)? initial,
    TResult? Function(List<DogModel> dogList)? searched,
    TResult? Function(List<DogModel> dogList, String url)? generated,
  }) {
    return searched?.call(dogList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DogModel> dogList)? initial,
    TResult Function(List<DogModel> dogList)? searched,
    TResult Function(List<DogModel> dogList, String url)? generated,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(dogList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Generated value) generated,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Generated value)? generated,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searched value)? searched,
    TResult Function(_Generated value)? generated,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements HomeState {
  const factory _Searched({required final List<DogModel> dogList}) =
      _$SearchedImpl;

  @override
  List<DogModel> get dogList;
  @override
  @JsonKey(ignore: true)
  _$$SearchedImplCopyWith<_$SearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeneratedImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$GeneratedImplCopyWith(
          _$GeneratedImpl value, $Res Function(_$GeneratedImpl) then) =
      __$$GeneratedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DogModel> dogList, String url});
}

/// @nodoc
class __$$GeneratedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GeneratedImpl>
    implements _$$GeneratedImplCopyWith<$Res> {
  __$$GeneratedImplCopyWithImpl(
      _$GeneratedImpl _value, $Res Function(_$GeneratedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dogList = null,
    Object? url = null,
  }) {
    return _then(_$GeneratedImpl(
      dogList: null == dogList
          ? _value._dogList
          : dogList // ignore: cast_nullable_to_non_nullable
              as List<DogModel>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GeneratedImpl implements _Generated {
  const _$GeneratedImpl(
      {required final List<DogModel> dogList, required this.url})
      : _dogList = dogList;

  final List<DogModel> _dogList;
  @override
  List<DogModel> get dogList {
    if (_dogList is EqualUnmodifiableListView) return _dogList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dogList);
  }

  @override
  final String url;

  @override
  String toString() {
    return 'HomeState.generated(dogList: $dogList, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratedImpl &&
            const DeepCollectionEquality().equals(other._dogList, _dogList) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dogList), url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratedImplCopyWith<_$GeneratedImpl> get copyWith =>
      __$$GeneratedImplCopyWithImpl<_$GeneratedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DogModel> dogList) initial,
    required TResult Function(List<DogModel> dogList) searched,
    required TResult Function(List<DogModel> dogList, String url) generated,
  }) {
    return generated(dogList, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DogModel> dogList)? initial,
    TResult? Function(List<DogModel> dogList)? searched,
    TResult? Function(List<DogModel> dogList, String url)? generated,
  }) {
    return generated?.call(dogList, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DogModel> dogList)? initial,
    TResult Function(List<DogModel> dogList)? searched,
    TResult Function(List<DogModel> dogList, String url)? generated,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(dogList, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searched value) searched,
    required TResult Function(_Generated value) generated,
  }) {
    return generated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_Generated value)? generated,
  }) {
    return generated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searched value)? searched,
    TResult Function(_Generated value)? generated,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(this);
    }
    return orElse();
  }
}

abstract class _Generated implements HomeState {
  const factory _Generated(
      {required final List<DogModel> dogList,
      required final String url}) = _$GeneratedImpl;

  @override
  List<DogModel> get dogList;
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$GeneratedImplCopyWith<_$GeneratedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
