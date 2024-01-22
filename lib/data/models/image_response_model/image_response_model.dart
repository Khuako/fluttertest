import 'package:fluttertestt/data/models/images_model/images_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_response_model.freezed.dart';
part 'image_response_model.g.dart';

@freezed
class ImageResponseModel with _$ImageResponseModel {
  factory ImageResponseModel({
    bool? ok,
    ImagesModel? result,
  }) = _ImageResponseModel;
  factory ImageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseModelFromJson(json);

}
