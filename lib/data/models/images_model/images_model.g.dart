// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImagesModelImpl _$$ImagesModelImplFromJson(Map<String, dynamic> json) =>
    _$ImagesModelImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => PictureModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      continuationToken: json['continuationToken'] as String?,
    );

Map<String, dynamic> _$$ImagesModelImplToJson(_$ImagesModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'continuationToken': instance.continuationToken,
    };
