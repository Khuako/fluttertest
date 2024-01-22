part of 'picture_table_bloc.dart';

@freezed
class PictureTableState with _$PictureTableState {
  const factory PictureTableState.initial({required  List<PictureModel> pictures,}) = _InitialState;
  const factory PictureTableState.error(String? message) = _ErrorState;
  const factory PictureTableState.loading() = _LoadingState;
}
