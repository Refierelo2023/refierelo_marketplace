// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class YoutubeComponent extends StatefulWidget {
//   final String videoId;
//   const YoutubeComponent({Key? key, required this.videoId}) : super(key: key);

  

//   @override
//   State<YoutubeComponent> createState() => _YoutubeComponentState();
// }

// class _YoutubeComponentState extends State<YoutubeComponent> {
//   late YoutubePlayerController _controller;

//   @override
//   void initState() {
//     //ignore:todo
//     // TODO: implement initState
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: widget.videoId,
//       flags: const YoutubePlayerFlags(
//         mute: false,
//         autoPlay: false,
//         disableDragSeek: false,
//         loop: false,
//         isLive: false,
//         forceHD: false,
//         enableCaption: true,
//       ),
//     );
//   }


//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
  
//     return Container(
//       width: double.infinity,
//       // height: size.height * 0.3,
//       padding: EdgeInsets.symmetric(
//           vertical: size.height * 0.01, horizontal: size.width * 0.03),
//       child: YoutubePlayerBuilder(
//           // onExitFullScreen: () {
//           //   // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
//           //   SystemChrome.setPreferredOrientations(DeviceOrientation.values);
//           // },
//           player: YoutubePlayer(
//             controller: _controller,
//             // controller: YoutubePlayerController(
//             //   initialVideoId: widget.videoId,
//             //   flags: const YoutubePlayerFlags(
//             //       hideControls: false,
//             //       autoPlay: false,
//             //       mute: false,
//             //       controlsVisibleAtStart: true),
//             // ),
//             showVideoProgressIndicator: true,
//             progressIndicatorColor: Colors.amber,
//           ),
//           builder: ((context, player) {
//             return Column(
//               children: [
//                 // some widgets
//                 player,
//                 //some other widgets
//               ],
//             );
//           })),
//     );
//   }


  
// }
