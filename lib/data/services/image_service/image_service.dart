import 'package:fluttertestt/data/models/image_response_model/image_response_model.dart';
import 'package:fluttertestt/data/repository.dart';
import 'package:get_it/get_it.dart';

class ImageService {
  late Repository repository;

  ImageService() {
    repository = GetIt.instance<Repository>();
  }
  Future<ImageResponseModel?> getImages(String? continuationToken) async {
    final response = await repository.getMethod(path: 'jobEvaluation/images', params: {'continuationToken': continuationToken});
    if(response.statusCode == 200) {
      return ImageResponseModel.fromJson(response.data);
    }
    return null;
  }
}