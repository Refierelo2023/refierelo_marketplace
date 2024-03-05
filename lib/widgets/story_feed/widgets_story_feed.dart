import 'dart:math';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:refierelo_marketplace/app/app_data/story_data.dart';
import 'package:refierelo_marketplace/app/models/story_model.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/story_feed/animation_bar.dart';
import 'package:refierelo_marketplace/widgets/story_feed/animation_is_Liked.dart.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widget_display_share_history.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_user_info.dart';
import 'package:video_player/video_player.dart';

class WidgetsStoryFeed extends StatefulWidget {
  const WidgetsStoryFeed(
      {super.key, required this.stories, required this.herotagString});

  final List<dynamic> stories;
  final String herotagString;
  @override
  State<WidgetsStoryFeed> createState() => _WidgetsStoryFeedState();
}

class _WidgetsStoryFeedState extends State<WidgetsStoryFeed>
    with TickerProviderStateMixin {
  PageController? _pageController;
  PageController? _childpageController;
  AnimationController? _animationController;
  VideoPlayerController? _videoPlayerController;
  int _currentIndex = 0;
  final _pageNotifier = ValueNotifier(0.0);

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _childpageController = PageController();
    _animationController = AnimationController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _pageController!.addListener(_listener);
    });
    final Story firstStory = widget.stories.first;
    _loadStory(story: firstStory, animationToPage: false);
    _animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController!.stop();
        _animationController!.reset();
        setState(() {
          if (_currentIndex + 1 < widget.stories.length) {
            _currentIndex += 1;
            _loadStory(story: widget.stories[_currentIndex]);
          } else {
            _currentIndex = 0;
            _loadStory(story: widget.stories[_currentIndex]);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController!.removeListener(_listener);
    _pageController!.dispose();
    _childpageController!.dispose();
    _pageNotifier.dispose();
    _animationController!.dispose();
    super.dispose();
  }

  void _listener() {
    _pageNotifier.value = _pageController!.page!;
  }

  @override
  Widget build(BuildContext context) {
    final Story story = widget.stories[_currentIndex];

    var borderside = const BorderSide(
      color: Colors.white,
      width: 0.5,
    );
    var borderRadius = BorderRadius.circular(11.r);
    // var outlineInput =
    OutlineInputBorder(borderSide: borderside, borderRadius: borderRadius);
    return Material(
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.06,
          ),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: ValueListenableBuilder<double>(
            valueListenable: _pageNotifier,
            builder: (_, value, child) {
              return PageView.builder(
                  controller: _pageController,
                  physics: const ClampingScrollPhysics(),
                  itemCount: storyListUser.length,
                  itemBuilder: (context, index) {
                    final isLeaving = (index - value) <= 0;
                    final t = (index - value);
                    final rotationY = lerpDouble(0, 90, t);
                    final opacity = lerpDouble(0, 1, t.abs().clamp(0.0, 1.0));
                    final transform = Matrix4.identity();
                    transform.setEntry(3, 2, 0.003);
                    transform.rotateY(double.parse("${-degToRad(rotationY!)}"));
                    return GestureDetector(
                      onTapDown: (details) => _onTapDown(details, story),
                      onVerticalDragUpdate: (details) =>
                          Navigator.of(context).pop(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Transform(
                          alignment: isLeaving
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          transform: transform,
                          child: Stack(
                            children: [
                              Stack(
                                children: [
                                  PageView.builder(
                                    controller: _childpageController,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount:
                                        storyListUser[index].story.length,
                                    itemBuilder: (contex, index) {
                                      final Story story = widget.stories[index];
                                      switch (story.media) {
                                        case MediaType.image:
                                          return CachedNetworkImage(
                                            imageUrl:
                                                story.url?.isNotEmpty == true
                                                    ? story.url!
                                                    : 'URL_POR_DEFECTO',
                                            fit: BoxFit.cover,
                                          );
                                        case MediaType.video:
                                          if (_videoPlayerController != null &&
                                              _videoPlayerController!
                                                  .value.isInitialized) {
                                            return FittedBox(
                                              fit: BoxFit.cover,
                                              child: SizedBox(
                                                width: _videoPlayerController!
                                                    .value.size.width,
                                                height: _videoPlayerController!
                                                    .value.size.height,
                                                child: VideoPlayer(
                                                    _videoPlayerController!),
                                              ),
                                            );
                                          } else {
                                            // Manejo de caso nulo: Muestra un indicador de carga u otro widget
                                            return Center(
                                              child: Image.asset(
                                                'assets/images/loading/LOADING.gif',
                                                height: 100,
                                                width: 100,
                                              ),
                                            );
                                          }
                                      }
                                    },
                                  ),
                                  Positioned(
                                    top: 0.0,
                                    left: 10.0,
                                    right: 10.0,
                                    child: SafeArea(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: widget.stories //
                                              .asMap() //
                                              .map((key, value) {
                                                return MapEntry(
                                                    //
                                                    key,
                                                    AnimatedBar(
                                                        animationController:
                                                            _animationController!,
                                                        position: key,
                                                        currentindex:
                                                            _currentIndex));
                                              })
                                              .values
                                              .toList(), //
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 1.5,
                                            vertical: 10.0,
                                          ), //posición nombre usuario, imagen
                                          child: Hero(
                                              tag: widget.herotagString,
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: WidgetsUserInfo(
                                                      user: storyListUser[index]
                                                          .user,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ],
                                    )),
                                  ),
                                ],
                              ),
                              Positioned.fill(
                                child: Opacity(
                                  opacity: opacity!, // ojo verificar.
                                  child: Container(
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(
              right: 20,
              top: 20,
              bottom: 20,
              left: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const AnimationIsLiked(),
                const SizedBox(width: 22),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const WidgetDisplayShareHistory(); // Ajusta según sea necesario
                          },
                        );
                      },
                      child: Image.asset(
                        "assets/images/images_icons/compartirblanco.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: CustomFontAileronRegularWhite(
                        text: "Publicar",
                        fontSize: 0.028,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails detalis, Story story) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double dx = detalis.globalPosition.dx;
    if (dx < screenwidth / 3) {
      setState(() {
        if (_currentIndex - 1 >= 0) {
          _currentIndex -= 1;
          _loadStory(story: widget.stories[_currentIndex]);
        }
      });
    } else if (dx > 2 * screenwidth / 3) {
      setState(() {
        if (_currentIndex + 1 < widget.stories.length) {
          _currentIndex += 1;
          _loadStory(story: widget.stories[_currentIndex]);
        } else {
          _currentIndex = 0;
          _loadStory(story: widget.stories[_currentIndex]);
        }
      });
    } else {
      if (story.media == MediaType.video) {
        if (_videoPlayerController!.value.isPlaying) {
          _videoPlayerController!.pause();
          _animationController!.stop();
        } else {
          _videoPlayerController!.play();
          _animationController!.forward();
        }
      }
    }
  }

  void _loadStory({required Story story, bool animationToPage = true}) {
    _animationController!.stop();
    _animationController!.reset();
    const imageAnimationDuration =
        Duration(seconds: 5); // duración historias AnimatedBar
    switch (story.media) {
      case MediaType.image:
        _animationController!.duration = imageAnimationDuration;
        _animationController!.forward();
        break;
      case MediaType.video:
        _videoPlayerController = VideoPlayerController.asset(story.url!)
          ..initialize().then((value) {
            setState(() {});
            if (_videoPlayerController!.value.isInitialized) {
              _animationController!.duration =
                  _videoPlayerController!.value.duration;
              _videoPlayerController!.play();
              _animationController!.forward();
            }
          });
        break;
      default:
    }
    if (animationToPage) {
      _childpageController!.animateToPage(
        _currentIndex,
        duration: const Duration(microseconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }
}

num degToRad(num deg) => deg * (pi / 180.0);
num radToDeg(num deg) => deg * (180.0 / pi);
