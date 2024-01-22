import 'package:fluttertestt/data/models/variant_model/variant_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'picture_model.freezed.dart';
part 'picture_model.g.dart';
@freezed
class PictureModel with _$PictureModel {
  factory PictureModel({
    String? id,
    List<VariantModel>? variants,
  }) = _PictureModel;
  factory PictureModel.fromJson(Map<String, dynamic> json) =>
      _$PictureModelFromJson(json);

}