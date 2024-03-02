import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeComponent extends StatelessWidget {
  final String videoId;

  const YoutubeComponent({super.key, required this.videoId});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.285,
      width: size.width,
      margin: EdgeInsets.symmetric(
          vertical: size.height * 0.01, horizontal: size.width * 0.04),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.23),
          borderRadius: BorderRadius.circular(10)),
      child: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
          ),
        ),
        showVideoProgressIndicator: true,
      ),
    );
  }
}
