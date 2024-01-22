// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PictureModel _$PictureModelFromJson(Map<String, dynamic> json) {
  return _PictureModel.fromJson(json);
}

/// @nodoc
mixin _$PictureModel {
  String? get id => throw _privateConstructorUsedError;
  List<VariantModel>? get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureModelCopyWith<PictureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureModelCopyWith<$Res> {
  factory $PictureModelCopyWith(
          PictureModel value, $Res Function(PictureModel) then) =
      _$PictureModelCopyWithImpl<$Res, PictureModel>;
  @useResult
  $Res call({String? id, List<VariantModel>? variants});
}

/// @nodoc
class _$PictureModelCopyWithImpl<$Res, $Val extends PictureModel>
    implements $PictureModelCopyWith<$Res> {
  _$PictureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? variants = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PictureModelImplCopyWith<$Res>
    implements $PictureModelCopyWith<$Res> {
  factory _$$PictureModelImplCopyWith(
          _$PictureModelImpl value, $Res Function(_$PictureModelImpl) then) =
      __$$PictureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, List<VariantModel>? variants});
}

/// @nodoc
class __$$PictureModelImplCopyWithImpl<$Res>
    extends _$PictureModelCopyWithImpl<$Res, _$PictureModelImpl>
    implements _$$PictureModelImplCopyWith<$Res> {
  __$$PictureModelImplCopyWithImpl(
      _$PictureModelImpl _value, $Res Function(_$PictureModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? variants = freezed,
  }) {
    return _then(_$PictureModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PictureModelImpl implements _PictureModel {
  _$PictureModelImpl({this.id, final List<VariantModel>? variants})
      : _variants = variants;

  factory _$PictureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PictureModelImplFromJson(json);

  @override
  final String? id;
  final List<VariantModel>? _variants;
  @override
  List<VariantModel>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PictureModel(id: $id, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureModelImplCopyWith<_$PictureModelImpl> get copyWith =>
      __$$PictureModelImplCopyWithImpl<_$PictureModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PictureModelImplToJson(
      this,
    );
  }
}

abstract class _PictureModel implements PictureModel {
  factory _PictureModel(
      {final String? id,
      final List<VariantModel>? variants}) = _$PictureModelImpl;

  factory _PictureModel.fromJson(Map<String, dynamic> json) =
      _$PictureModelImpl.fromJson;

  @override
  String? get id;
  @override
  List<VariantModel>? get variants;
  @override
  @JsonKey(ignore: true)
  _$$PictureModelImplCopyWith<_$PictureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
