import 'package:freezed_annotation/freezed_annotation.dart';
import '../picture_model/picture_model.dart';
part 'images_model.freezed.dart';
part 'images_model.g.dart';
@freezed
class ImagesModel with _$ImagesModel {
  factory ImagesModel({
    List<PictureModel>? items,
    String? continuationToken,
  }) = _ImagesModel;
  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);

}