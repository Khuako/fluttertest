import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertestt/helpers/app_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showErrorMessage({
  required String message,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP_RIGHT,
    timeInSecForIosWeb: 3,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16,
  );
}
Future<T?> showAppDialog<T>({
  required BuildContext context,
  required Widget child,
  Color barrierColor = Colors.black54,
  double? maxWidth,
  EdgeInsets? padding,

  EdgeInsetsGeometry? margin,
}) {
  return showDialog<T>(
    barrierColor: Colors.transparent,
    context: context,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AppDialog(
        margin: margin,
        padding: padding,
        maxWidth: maxWidth,
        child: child,
      ),
    ),
  );
}