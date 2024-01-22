import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertestt/app.dart';
import 'package:fluttertestt/data/di_container.dart';
import 'package:get_it/get_it.dart';
GetIt getIt = GetIt.instance;
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await startGetIt(getIt);
  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}