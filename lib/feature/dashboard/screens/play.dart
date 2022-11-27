import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_library/feature/onboarding/screens/sign_in/sign_in.dart';
import 'package:e_library/feature/onboarding/services/auth_services.dart';

import 'package:e_library/helpers/colors.dart';
import 'package:e_library/helpers/navigators.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';
import 'package:e_library/helpers/page_layout/text_formating.dart';
import 'package:e_library/welcome.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  ChewieController? _chewieController;
  VideoPlayerController? _videoPlayerController;

  String dataSource =
      "https://res.cloudinary.com/acekn/video/upload/v1668351016/videos%20t/ENNY_-_Daily_Duppy___GRM_Daily.mp4_uh8bk0.mp4";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    _videoPlayerController = VideoPlayerController.network(dataSource);
    _videoPlayerController!.initialize().then((_) {
      _chewieController = ChewieController(
          fullScreenByDefault: true,
          videoPlayerController: _videoPlayerController!);
    });

    setState(() {
      print("Video playing good to go");
    });
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // TODO: implement dispose
    _videoPlayerController!.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold()
    return PageLayout(
        noAppBar: true,
        navPop: false,
        scaffoldColor: Colors.black,
        // title: "Play Stream",
        child: Center(child: _chewieVideoPlayer()));
  }

  Widget _chewieVideoPlayer() {
    return _chewieController != null && _videoPlayerController != null
        ? Container(
            child: Chewie(controller: _chewieController!),
          )
        : IconButton(
            color: Colors.red,
            onPressed: () {
              setState(() {
                print("play");
              });
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          );
  }
}
