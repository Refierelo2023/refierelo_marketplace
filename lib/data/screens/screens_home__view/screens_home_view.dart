import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rect_getter/rect_getter.dart';
import 'package:refierelo_marketplace/app/app_data/story_data.dart';
import 'package:refierelo_marketplace/app/helper/constant.dart';
import 'package:refierelo_marketplace/app/helper/page_animations/page_routes_animation.dart';
import 'package:refierelo_marketplace/data/screens/screens_home__view/screens_announcements.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_story_feed.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_user_story.dart';

class ScreensHomeView extends StatefulWidget {
  const ScreensHomeView({super.key});

  @override
  State<ScreensHomeView> createState() => _ScreensHomeViewState();
}

class _ScreensHomeViewState extends State<ScreensHomeView>
    with TickerProviderStateMixin {
  GlobalKey<RectGetterState> reactGetterkey = RectGetter.createGlobalKey();
  Rect? rect;
  AnimationController? storyAnimationController;
  Animation? storycolorAnimation;

  @override
  void initState() {
    super.initState();
    storyAnimationController =
        AnimationController(vsync: this, duration: animationDuration);
    storycolorAnimation = ColorTween(begin: Colors.black12, end: Colors.black)
        .animate(storyAnimationController!);
    storyAnimationController!.addListener(() {
      setState(() {});
    });
  }

  void onStoryItemTap(reactpoint, index) {
    setState(() => rect = reactpoint);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() =>
          rect = rect!.inflate(1.3 * MediaQuery.of(context).size.longestSide));
      storyAnimationController!.forward();
      Future.delayed(animationDuration, () {
        Navigator.of(context)
            .push(
              FadeRouteBuilder(
                page: WidgetsStoryFeed(
                    stories: stories, herotagString: 'index$index'),
              ),
            )
            .then((value) => setState(() => rect = null));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
            SizedBox(
                height: 70.w,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    itemBuilder: (context, index) {
                      return WidgetsUserStory(
                        setRectPoint: (reactPoint) {                          
                          setState(() {
                            rect = reactPoint;
                          });
                          onStoryItemTap(rect, index);
                        },
                        index: index,
                        onStoryItemTap: onStoryItemTap,
                      );
                    }
                  )
                ),                
              ]              
            ),            
          ),
        rippleAnimationOverlay(),
        Positioned(
            top: 70.w,
            bottom: 0,
            left: 0,
            right: 0,
            child: const IndexedStack(
              index: 0,
              children: [
                ScreensAnnouncements(),
              ],
            ),
          ),
      ],
    );
  }
  Widget rippleAnimationOverlay() {
    if (rect == null) {
      return const Offstage();
    }    
    return Overlay(
      initialEntries: [
        OverlayEntry(
          builder: (context) => Positioned(
            left: rect!.right,
            right: MediaQuery.of(context).size.width - rect!.right,
            top: rect!.top,
            bottom: MediaQuery.of(context).size.height - rect!.bottom,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: storycolorAnimation!.value,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
