import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertestt/helpers/functions.dart';
import 'package:fluttertestt/ui/picture_table_screen/pages/main_page.dart';
import 'package:fluttertestt/ui/picture_table_screen/picture_table_bloc/picture_table_bloc.dart';
import 'package:bloc/bloc.dart';
class PictureTableScreen extends StatelessWidget {
  const PictureTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PictureTableBloc>(
      create: (context) => PictureTableBloc()
        ..add(
          const PictureTableEvent.initial(),
        ),
      child: BlocConsumer<PictureTableBloc, PictureTableState>(
        listener: (context, state) async {
          state.maybeMap(
            error: (info) => showErrorMessage(
              message: info.message ?? '',
            ),
            orElse: () => const SizedBox(),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            initial: (pictures) => MainPage(pictures: pictures),
            loading: ()=> const Center(child: CircularProgressIndicator(),),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
