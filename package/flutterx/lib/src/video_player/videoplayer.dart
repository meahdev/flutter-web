import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/src/video_player/controllers/pod_player_controller.dart';
import 'package:flutterx/src/video_player/models/play_video_from.dart';
import 'package:flutterx/src/video_player/models/pod_player_config.dart';
import 'package:flutterx/src/video_player/models/pod_player_labels.dart';
import 'package:flutterx/src/video_player/models/pod_progress_bar_config.dart';
import 'package:flutterx/src/video_player/pod_player.dart';

enum VideoFrom { network, asset, file }

class FxVideoPlayer extends StatefulWidget {
  final VideoFrom videoFrom;
  final List<String> videoList;
  final double? videoAspectRatio;
  final PodPlayerLabels? buttonLabels;
  final double progressBarHeight;
  final double barCircleRadius;
  final Color barCircleColor;
  final Color bufferedBarColor;
  final Color playingBarColor;
  final Color barBackgroundColor;
  final Color backgroundColor;
  final Color controllIconsColor;
  final Color durationTextColor;
  final Color nextIconColor;
  final Color prevIconColor;

  FxVideoPlayer({
    Key? key,
    required this.videoFrom,
    required this.videoList,
    this.videoAspectRatio,
    this.buttonLabels,
    this.progressBarHeight = 3.5,
    this.barCircleRadius = 8,
    this.barCircleColor = Colors.blue,
    this.bufferedBarColor = const Color.fromRGBO(255, 255, 255, 0.38),
    this.playingBarColor = Colors.blue,
    this.barBackgroundColor = Colors.blueGrey,
    this.backgroundColor = Colors.black,
    this.controllIconsColor = Colors.white,
    this.durationTextColor = Colors.white,
    this.nextIconColor = Colors.white,
    this.prevIconColor = Colors.white,
  })  : assert((videoList.isNotEmpty), 'videoList cant\'t be Empty'),
        assert((videoList[0].isNotEmpty), 'check First\'s link of List'),
        super(key: key);

  @override
  FxVideoPlayerState createState() => FxVideoPlayerState();
}

class FxVideoPlayerState extends State<FxVideoPlayer> {
  late PodPlayerController podController;

  String errorMessage = '';

  int getIndex() {
    return widget.videoList.indexOf(podController.videoUrl ?? '');
  }

  bool getBoolForNextPrev({required bool isNext}) {
    if (isNext) {
      if (widget.videoList.indexOf(podController.videoUrl ?? '') <
          widget.videoList.length - 2) {
        return true;
      } else {
        return false;
      }
    } else {
      if (widget.videoList.indexOf(podController.videoUrl ?? '') > 0) {
        return true;
      } else {
        return false;
      }
    }
  }

  Future<void> changeVideo({required bool forward}) async {
    if (getIndex() >= 0) {
      podController.pause();
      try {
        await podController.changeVideo(
            playVideoFrom: PlayVideoFrom.network(
                widget.videoList[forward ? getIndex() + 1 : getIndex() - 1]));
        if (!mounted) return;
        setState(() {});
      } catch (e) {
        errorMessage = e.toString();
      }
    }
  }

  PlayVideoFrom getPlayVideoFrom(String path) {
    if (widget.videoFrom == VideoFrom.network) {
      return PlayVideoFrom.network(
        widget.videoList[0],
      );
    } else if (widget.videoFrom == VideoFrom.asset) {
      return PlayVideoFrom.asset(
        widget.videoList[0],
      );
    } else if (widget.videoFrom == VideoFrom.file) {
      return PlayVideoFrom.file(
        widget.videoList[0],
      );
    } else {
      return PlayVideoFrom.network(
        widget.videoList[0],
      );
    }
  }

  @override
  void initState() {
    podController = PodPlayerController(
      podPlayerConfig: const PodPlayerConfig(
        autoPlay: true,
        isLooping: false,
        videoQualityPriority: [720, 360],
      ),
      playVideoFrom: getPlayVideoFrom(widget.videoList[0]),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    podController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 56,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PodVideoPlayer(
          controller: podController,
          controllIconsColor: widget.controllIconsColor,
          durationTextColor: widget.durationTextColor,
          nextIconColor: getBoolForNextPrev(isNext: true)
              ? widget.nextIconColor
              : widget.nextIconColor.withOpacity(0.4),
          prevIconColor: getBoolForNextPrev(isNext: false)
              ? widget.nextIconColor
              : widget.nextIconColor.withOpacity(0.4),
          nextVideoTap: () {
            if (getBoolForNextPrev(isNext: true)) {
              changeVideo(forward: true);
            }
          },
          prevVideoTap: () {
            if (getBoolForNextPrev(isNext: false)) {
              changeVideo(forward: false);
            }
          },

          videoAspectRatio: widget.videoAspectRatio ??
              podController.videoPlayerValue?.aspectRatio ??
              16 / 9,
          podPlayerLabels: widget.buttonLabels ??
              const PodPlayerLabels(
                play: "PLAY",
                pause: "PAUSE",
                error: "ERROR WHILE TRYING TO PLAY VIDEO",
                exitFullScreen: "EXIT FULL SCREEN",
                fullscreen: "FULL SCREEN",
                loopVideo: "LOOP VIDEO",
                mute: "MUTE",
                playbackSpeed: "PLAYBACK SPEED",
                settings: "SETTINGS",
                unmute: "UNMUTE",
                optionEnabled: "YES",
                optionDisabled: "NO",
                quality: "QUALITY",
              ),
          onVideoError: () {
            return Center(
              child: Container(
                width: 200,
                height: 250,
                color: Colors.black,
                padding: const EdgeInsets.all(15),
                child: Text('Please check URL OR Path :::: $errorMessage',
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
              ),
            );
          },
          // overlayBuilder: (options) {
          //   return Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height,
          //     color: Colors.black,
          //     padding: EdgeInsets.all(15),
          //     child: Icon(
          //       Icons.warning_amber,
          //       color: Colors.yellow,
          //       size: 70,
          //     ),
          //   );
          // },
          matchFrameAspectRatioToVideo: true,
          matchVideoAspectRatioToFrame: true,
          backgroundColor: widget.backgroundColor,
          podProgressBarConfig: PodProgressBarConfig(
            padding: kIsWeb ? EdgeInsets.zero : const EdgeInsets.all(8),
            playingBarColor: widget.playingBarColor,
            circleHandlerColor: widget.barCircleColor,
            backgroundColor: widget.barBackgroundColor,
            bufferedBarColor: widget.bufferedBarColor,
            circleHandlerRadius: widget.barCircleRadius,
            curveRadius: 4,
            height: widget.progressBarHeight,
          ),
        ),
      ),
    );
  }
}
