part of 'picture_table_bloc.dart';

@freezed
class PictureTableEvent with _$PictureTableEvent {
  const factory PictureTableEvent.initial() = _InitialEvent;
  const factory PictureTableEvent.fetchMore() = _FetchMoreEvent;
}
