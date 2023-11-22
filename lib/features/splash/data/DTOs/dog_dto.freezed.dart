// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DogDto {
  String get name => throw _privateConstructorUsedError;
  List<String> get subBreeds => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DogDtoCopyWith<DogDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogDtoCopyWith<$Res> {
  factory $DogDtoCopyWith(DogDto value, $Res Function(DogDto) then) =
      _$DogDtoCopyWithImpl<$Res, DogDto>;
  @useResult
  $Res call({String name, List<String> subBreeds, String? imageUrl});
}

/// @nodoc
class _$DogDtoCopyWithImpl<$Res, $Val extends DogDto>
    implements $DogDtoCopyWith<$Res> {
  _$DogDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? subBreeds = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subBreeds: null == subBreeds
          ? _value.subBreeds
          : subBreeds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DogDtoImplCopyWith<$Res> implements $DogDtoCopyWith<$Res> {
  factory _$$DogDtoImplCopyWith(
          _$DogDtoImpl value, $Res Function(_$DogDtoImpl) then) =
      __$$DogDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> subBreeds, String? imageUrl});
}

/// @nodoc
class __$$DogDtoImplCopyWithImpl<$Res>
    extends _$DogDtoCopyWithImpl<$Res, _$DogDtoImpl>
    implements _$$DogDtoImplCopyWith<$Res> {
  __$$DogDtoImplCopyWithImpl(
      _$DogDtoImpl _value, $Res Function(_$DogDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? subBreeds = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$DogDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subBreeds: null == subBreeds
          ? _value._subBreeds
          : subBreeds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DogDtoImpl extends _DogDto {
  _$DogDtoImpl(
      {required this.name,
      required final List<String> subBreeds,
      required this.imageUrl})
      : _subBreeds = subBreeds,
        super._();

  @override
  final String name;
  final List<String> _subBreeds;
  @override
  List<String> get subBreeds {
    if (_subBreeds is EqualUnmodifiableListView) return _subBreeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subBreeds);
  }

  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'DogDto(name: $name, subBreeds: $subBreeds, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DogDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._subBreeds, _subBreeds) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_subBreeds), imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DogDtoImplCopyWith<_$DogDtoImpl> get copyWith =>
      __$$DogDtoImplCopyWithImpl<_$DogDtoImpl>(this, _$identity);
}

abstract class _DogDto extends DogDto {
  factory _DogDto(
      {required final String name,
      required final List<String> subBreeds,
      required final String? imageUrl}) = _$DogDtoImpl;
  _DogDto._() : super._();

  @override
  String get name;
  @override
  List<String> get subBreeds;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$DogDtoImplCopyWith<_$DogDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
