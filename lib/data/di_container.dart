import 'package:flutter/cupertino.dart';
import 'package:fluttertestt/data/repositories/image_repository/image_repository.dart';
import 'package:fluttertestt/data/repository.dart';
import 'package:fluttertestt/data/services/image_service/image_service.dart';
import 'package:get_it/get_it.dart';
Future<void> startGetIt(GetIt getIt) async {
  getIt.registerSingleton(
    Repository(),
    signalsReady: false,
  );
  getIt.registerSingleton(
    ImageService(),
  );
  getIt.registerSingleton(
    ImageRepository(),
  );
}
