import 'package:flutter/material.dart';
import 'package:youtube_app/models/item_data.dart';
import 'package:youtube_app/pages/play_video_page.dart';
import 'package:youtube_app/pages/youtube_home_page.dart';

class OnGenerateRoute {

  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;
    if (settings.name == "/") {
      return MaterialPageRoute(
          builder: (_) => YoutubeSearchPage()
      );
    } else if (settings.name == "/playVideo") {
      if (args is ItemData) {
        return MaterialPageRoute(
            builder: (_) => PlayVideo(item: args,)
        );
      } else {
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(
                  appBar: AppBar(
                    title: Text("error"),
                  ),
                  body: Center(
                    child: Text("error"),
                  ),
                )
        );
      }
    }
    return MaterialPageRoute(builder: (_) => ErrorPage());
  } 
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
