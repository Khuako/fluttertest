import 'package:flutter/material.dart';
import 'package:fluttertestt/data/api_client.dart';
import 'package:fluttertestt/helpers/constants.dart';
import 'package:fluttertestt/ui/picture_table_screen/picture_table_screen.dart';



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final appRouter = AppRouter();
  bool isLoading = false;
  bool isError = false;
  @override
  void dispose() {
    super.dispose();
  }

  Future<bool> updateToken() async {
    bool result = false;
    const url = baseUrl;
    try {
      await ApiClient()
          .initClient(
        url: url,
        context: context,
      );
    } catch (ex) {
      result = false;
    }
    return result;
  }



  void getData() async {
    setState(() {
      isLoading = true;
    });
    try {
      await updateToken().then((value) {
        setState(() {
          isError = !value;
        });
      });
    } catch (ex) {
      setState(() async {
        isError = true;
      });
    }
    setState(() {
      isLoading = false;
    });
  }


  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      checkerboardOffscreenLayers: false,
      debugShowCheckedModeBanner: false,
      home: isLoading
          ? const CircularProgressIndicator()

          : const PictureTableScreen()
    );
  }
}
