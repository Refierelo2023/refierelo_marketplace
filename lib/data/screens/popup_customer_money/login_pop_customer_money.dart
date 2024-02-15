import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/popup_customer_money/screens_popup_basic.dart';
import 'package:refierelo_marketplace/data/screens/popup_customer_money/screens_popup_gold.dart';
import 'package:refierelo_marketplace/data/screens/popup_customer_money/screens_popup_premium.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class LoginPopCustomerMoney extends StatefulWidget {
  const LoginPopCustomerMoney({super.key});

  static void showLoginPop(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const LoginPopCustomerMoney();
      },
    );
  }

  @override
  LoginPopCustomerMoneyState createState() => LoginPopCustomerMoneyState();
}

class LoginPopCustomerMoneyState extends State<LoginPopCustomerMoney>
    with TickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabController;
  double _titleOpacity = 0.0;
  late BoxDecoration _tabGradient = const BoxDecoration();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _titleOpacity = (_scrollController.offset / 100.0).clamp(0.0, 1.0);
        });
      });

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_updateTabGradient);
    _tabController.index = 1;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        content: contentBox(context),
        backgroundColor: Colors.transparent,
        contentPadding: const EdgeInsets.all(0),
      ),
    );
  }

  contentBox(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double dialogWidth = screenSize.width * 1.8;
    double dialogHeight = screenSize.height * 0.8;

    return SizedBox(
      width: dialogWidth,
      height: dialogHeight,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(15),
            bottom: Radius.circular(15),
          ),
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 180.0,
                  floating: false,
                  pinned: true,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    background: Image.asset(
                      "assets/images/images_login/cohete111.png",
                      fit: BoxFit.cover,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: Opacity(
                          opacity: _titleOpacity,
                          child: const CustomFontAileronBold2(
                            text: "Selecciona el plan ideal",
                          ),
                        ),
                      ),
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(); //
                      },
                    ),
                  ],
                  bottom: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      const Row(
                        children: [
                          Tab(text: 'Free'),
                        ],
                      ),
                      Row(
                        children: [
                          if (_tabController.index ==
                              1) // Mostrar icono solo en la pestaña 'Gold'
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Image.asset(
                                'assets/images/insignias_membresias/gold.png',
                                width: 16,
                                height: 16,
                              ),
                            ),
                          const Tab(text: 'Gold'),
                        ],
                      ),
                      Row(
                        children: [
                          if (_tabController.index ==
                              2) // Mostrar icono solo en la pestaña 'Premium'
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Image.asset(
                                'assets/images/insignias_membresias/premium.png',
                                width: 16,
                                height: 16,
                              ),
                            ),
                          const Tab(text: 'Premium'),
                        ],
                      ),
                    ],
                    indicator: _tabGradient,
                    labelColor: const Color(0xFF003366),
                    unselectedLabelColor: Colors.black,
                    controller: _tabController,
                  ),
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15.0),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: ScreensPopupBasic()),
                Center(child: ScreensPopupGold()),
                Center(child: ScreensPopupPremium()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _updateTabGradient() {
    List<Color> colors;

    if (_tabController.index == 0) {
      colors = const [
        Color(0xFFffffff),
        Color(0xFFffffff),
      ];
    } else if (_tabController.index == 1) {
      colors = const [
        Color(0xFFffffff),
        Color(0xFFffffff),
      ];
    } else if (_tabController.index == 2) {
      colors = const [
        Color(0xFFffffff),
        Color(0xFFffffff),
      ];
    } else {
      colors = [];
    }

    setState(() {
      _tabGradient = BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        gradient: LinearGradient(
          colors: colors,
        ),
      );
    });
  }
}
