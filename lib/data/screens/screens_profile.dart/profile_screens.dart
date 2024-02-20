import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/app/app_data/story_data.dart';
import 'package:refierelo_marketplace/app/helper/page_animations/page_routes_animation.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_screens_data.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/screens_profile_tabbar.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_story_feed.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_user_story_profile.dart';
import 'package:refierelo_marketplace/widgets/widget_productos_comprar.dart';
import 'package:refierelo_marketplace/widgets/widget_productos_referir.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widgets_user_story.dart';

class ProfileScreens extends StatefulWidget {
  const ProfileScreens({super.key});

  @override
  ProfileScreensState createState() => ProfileScreensState();
}

class ProfileScreensState extends State<ProfileScreens>
    with TickerProviderStateMixin {
  late AnimationController storyAnimationController;
  late Animation<Color?> storyColorAnimation;
  Rect? rect;

  final List<String> _stories = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4"
  ];

  final Duration animationDuration = const Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
    storyAnimationController =
        AnimationController(vsync: this, duration: animationDuration);
    storyColorAnimation = ColorTween(begin: Colors.black12, end: Colors.black)
        .animate(storyAnimationController);
    storyAnimationController.addListener(() {
      setState(() {});
    });
  }

  void onStoryItemTap(Rect? reactPoint, int index) {
    if (reactPoint != null) {
      setState(() => rect = reactPoint);
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        setState(() => rect =
            rect!.inflate(1.3 * MediaQuery.of(context).size.longestSide));
        storyAnimationController.forward();
        Future.delayed(animationDuration, () {
          Navigator.of(context)
              .push(
            FadeRouteBuilder(
              page: WidgetsStoryFeed(
                stories: stories,
                herotagString: 'index$index',
              ),
            ),
          )
              .then((value) {
            setState(() => rect = null);
          });
        });
      });
    }
  }

  @override
  void dispose() {
    storyAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double buttonPaddingHorizontalPercentage = 0.015;

    final userData = Provider.of<UserDataProvider>(context).userData;
    // print("Building WidgetDisplayMenuStory");
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Stack(children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: WidgetsUserStoryProfile(
                            setRectPoint: (rectPoint) {
                              setState(() {
                                rect = rectPoint;
                              });
                              int index = _stories.indexOf("");
                              onStoryItemTap(rect, index);
                            },
                            index: 0,
                            onStoryItemTap: onStoryItemTap,
                          ),
                        ),
                        const Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomFontAileronBold(text: "2.000"),
                              CustomFontAileronRegular(
                                text: "Recompensas",
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: GestureDetector(
                            onTap: () {                             
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ScreensProfileTabBar(),
                                ),
                              );
                            },
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomFontAileronBold(text: "1.000"),
                                CustomFontAileronRegular(text: "Referentes"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomFontAileronBold(text: "800     "),
                              CustomFontAileronRegular(
                                text: "Referidos      ",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /////////////////////////////////////////////////////////////// Textos perfil
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 5,
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CustomFontAileronBold2(
                        text: userData.nombreComercial,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: CustomFontAileronRegular2(
                            text: userData.ciudad,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: CustomFontAileronRegular2(
                          text: " - ",
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: CustomFontAileronRegular2(
                          text: userData.pais,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 0), // espacio
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomFontAileronRegular(
                        text: userData.presentacion,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        const Icon(
                          Icons.link,
                          color: Color(0xFF0000FF),
                        ),
                        const SizedBox(width: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CustomFontAileronRegularblue(
                            text: userData.web,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        const Icon(
                          Icons.link,
                          color: Color(0xFF0000FF),
                        ),
                        const SizedBox(width: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CustomFontAileronRegularblue(
                            text: userData.instagram,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 5),
                  // Botón "Editar Perfil" y "Compartir"
                  Row(
                    children: [
                      Expanded(
                        flex: 6, // 60% de la pantalla
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 5),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const LoginScreensData(),
                                ),
                              );
                            },
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width,
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.of(context).size.width *
                                    buttonPaddingHorizontalPercentage,
                                horizontal: MediaQuery.of(context).size.width *
                                    buttonPaddingHorizontalPercentage,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF02b5e7),
                                    Color(0xFF003366),
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Editar Perfil",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFffffff),
                                    fontFamily: "Aileron",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4, //30 % de la pantalla
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 5),
                          child: InkWell(
                            onTap: () {},
                            child: FractionallySizedBox(
                              widthFactor: 1,
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width,
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.width *
                                      buttonPaddingHorizontalPercentage,
                                  horizontal:
                                      MediaQuery.of(context).size.width *
                                          buttonPaddingHorizontalPercentage,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFf8e43e),
                                      Color(0xFFce8f21),
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.attach_money_sharp,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                    Center(
                                      child: Text(
                                        "Compartir",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFFffffff),
                                          fontFamily: "Aileron",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 110,
                    child: ListView.builder(
                      itemCount: _stories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return WidgetsUserStory(
                          index: index,
                          setRectPoint: (reactPoint) {
                            setState(() {
                              rect = reactPoint;
                            });
                            onStoryItemTap(rect, index);
                          },
                          onStoryItemTap: onStoryItemTap,
                        );
                      },
                    ),
                  ),
                  ///////////////////////////////////////////////////////////////////////////////////
                  //Referir y Comprar
                  const TabBar(
                    labelColor: Color(0xFF003366),
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Color(0xFF003366),
                    tabs: <Widget>[
                      Tab(
                          icon: Text(
                        "Referir",
                        style: TextStyle(fontFamily: "Aileron", fontSize: 17),
                      )),
                      Tab(
                          icon: Text(
                        "Comprar",
                        style: TextStyle(fontFamily: "Aileron", fontSize: 17),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2.2,
                    child: const TabBarView(children: [
                      Center(
                        child: WidgetProductosReferir(),
                      ),
                      Center(child: WidgetProductosComprar())
                    ]),
                  ),
                ], //children
              ),
            ],
          ),
        ),
        rippleAnimation()
      ]),
    );
  }

  Widget rippleAnimation() {
    if (rect == null) {
      return const Offstage();
    }

    return AnimatedPositioned.fromRect(
      rect: rect!,
      duration: animationDuration,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: storyColorAnimation.value,
        ),
      ),
    );
  }
}
