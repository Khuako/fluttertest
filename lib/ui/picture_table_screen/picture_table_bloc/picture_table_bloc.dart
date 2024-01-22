import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:fluttertestt/data/models/images_model/images_model.dart';
import 'package:fluttertestt/data/models/picture_model/picture_model.dart';
import 'package:fluttertestt/data/repositories/image_repository/image_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'picture_table_event.dart';

part 'picture_table_state.dart';

part 'picture_table_bloc.freezed.dart';

class PictureTableBloc extends Bloc<PictureTableEvent, PictureTableState> {
  PictureTableBloc() : super(const PictureTableState.loading()) {
    on<_InitialEvent>(_onInitialEvent);
    on<_FetchMoreEvent>(_onFetchMore);
  }

  late final ImageRepository imageRepository;
  List<PictureModel> pictures = [];
  String continuationToken = '';

  void _onInitialEvent(
    _InitialEvent event,
    Emitter<PictureTableState> emit,
  ) async {
    emit(const _LoadingState());
    try {
      imageRepository = GetIt.instance<ImageRepository>();
      final res = await imageRepository.getImages(continuationToken);
      if (res != null) {
        pictures.addAll(res.result?.items ?? []);
        continuationToken = res.result?.continuationToken ?? '';
      }
      emit( _InitialState(pictures: pictures,));
    } catch (ex) {
      emit(
        _ErrorState(
          ex.toString(),
        ),
      );
      final res = await imageRepository.getImages('');
      if (res != null) {
        pictures.addAll(res.result?.items ?? []);
        continuationToken = res.result?.continuationToken ?? '';
      }
      emit( _InitialState(pictures: pictures,));
    }
  }
  void _onFetchMore(
      _FetchMoreEvent event,
      Emitter<PictureTableState> emit,
      ) async {
    try {

      final res = await imageRepository.getImages(continuationToken);
      if (res != null) {
        pictures.addAll(res.result?.items ?? []);
        continuationToken = res.result?.continuationToken ?? '';
      }
    } catch (ex) {
      emit(
        _ErrorState(
          ex.toString(),
        ),
      );
      final res = await imageRepository.getImages('');
      if (res != null) {
        pictures.addAll(res.result?.items ?? []);
        continuationToken = res.result?.continuationToken ?? '';
      }
      emit( _InitialState(pictures: pictures,));
    }
  }
}
