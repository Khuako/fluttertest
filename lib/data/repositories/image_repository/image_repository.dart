import 'package:fluttertestt/data/models/image_response_model/image_response_model.dart';
import 'package:fluttertestt/data/services/image_service/image_service.dart';
import 'package:get_it/get_it.dart';

class ImageRepository {
  late ImageService service;

  ImageRepository() {
    service = GetIt.instance<ImageService>();
  }

  Future<ImageResponseModel?> getImages(String? continuationToken) async {
    return await service.getImages(continuationToken);
  }}

