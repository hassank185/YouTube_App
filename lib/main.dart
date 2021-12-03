import 'package:flutter/material.dart';
import 'package:youtube_app/pages/on_generate_route.dart';
import 'package:youtube_app/pages/youtube_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
    onGenerateRoute: OnGenerateRoute.route,
    debugShowCheckedModeBanner: false,
    title: "YouTube",
    // home: MyStateFullWidget(),
    );
  }
}
