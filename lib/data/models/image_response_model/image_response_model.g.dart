// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageResponseModelImpl _$$ImageResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageResponseModelImpl(
      ok: json['ok'] as bool?,
      result: json['result'] == null
          ? null
          : ImagesModel.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageResponseModelImplToJson(
        _$ImageResponseModelImpl instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'result': instance.result,
    };
