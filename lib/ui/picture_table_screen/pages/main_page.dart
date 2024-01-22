import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:fluttertestt/data/models/picture_model/picture_model.dart';
import 'package:fluttertestt/data/models/variant_model/variant_model.dart';
import 'package:fluttertestt/helpers/functions.dart';
import 'package:fluttertestt/ui/picture_table_screen/picture_table_bloc/picture_table_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.pictures});

  final List<PictureModel> pictures;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController _scrollController = ScrollController();

  String findOptimalImage(List<VariantModel> variants, double screenWidth) {
    VariantModel optimalVariant = variants.firstWhere(
      (variant) => (variant.width?.toInt() ?? 0) >= screenWidth,
      orElse: () => variants.first,
    );
    return optimalVariant.url ?? '';
  }

  List<PictureModel> pictures = [];
  String continuationToken = '';

  @override
  void initState() {
    pictures.addAll(widget.pictures);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        loadMore();
      }
    });
    super.initState();
  }

  loadMore() {
    context.read<PictureTableBloc>().add(const PictureTableEvent.fetchMore());
    setState(() {
      pictures = context.read<PictureTableBloc>().pictures;
      continuationToken = context.read<PictureTableBloc>().continuationToken;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: pictures.length + 1,
        itemBuilder: (context, index) {
          if (pictures.length != index) {
            final url = findOptimalImage(pictures[index].variants ?? [],
                MediaQuery.of(context).size.width / 3 - 16);
            return GestureDetector(
              onTap: () {
                showAppDialog(
                  context: context,
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.black45,
                      leading: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white38,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    body: PhotoView(
                      imageProvider: CachedNetworkImageProvider(
                        findOptimalImage(pictures[index].variants ?? [],
                            MediaQuery.of(context).size.width),
                      ),
                    ),
                  ),
                );
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 3 - 16,
                height: MediaQuery.of(context).size.width / 3 - 16,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  key: UniqueKey(),
                  cacheManager: CacheManager(
                    Config(
                      'customCacheKey',
                      stalePeriod: const Duration(
                        days: 15,
                      ),
                      maxNrOfCacheObjects: 1000,
                    ),
                  ),
                  progressIndicatorBuilder: (context, url, progress) => Center(
                    child: CircularProgressIndicator(
                      value: progress.progress,
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: url,
                ),
              ),
            );
          } else if (continuationToken.isNotEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
