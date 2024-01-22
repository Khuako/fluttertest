// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PictureModelImpl _$$PictureModelImplFromJson(Map<String, dynamic> json) =>
    _$PictureModelImpl(
      id: json['id'] as String?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => VariantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PictureModelImplToJson(_$PictureModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variants': instance.variants,
    };
