import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refierelo_marketplace/data/screens/donation/screens_adoptar.dart';
import 'package:refierelo_marketplace/data/screens/donation/screens_donar.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class PopDonation extends StatefulWidget {
  const PopDonation({super.key});

  static void showLoginPop(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const PopDonation();
      },
    );
  }

  @override
  PopDonationState createState() => PopDonationState();
}

class PopDonationState extends State<PopDonation>
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

  _tabController = TabController(length: 2, vsync: this);
  _tabController.addListener(_updateTabGradient);
}

@override
void didChangeDependencies() {
  super.didChangeDependencies();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    _tabController.index = 0;
    _updateTabGradient(); // Llamamos directamente a _updateTabGradient
    setState(() {});
  });
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
      length: 2,         
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
                      "assets/images/donation/FrailejonBanner.png",
                      fit: BoxFit.cover,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Align(
                        alignment: Alignment.center,
                        child: Opacity(
                          opacity: _titleOpacity,
                          child: const CustomFontAileronBold2(
                            text: "Utiliza tus puntos como quieras",
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
                      Tab(
                        child: Row(
                          children: [
                            if (_tabController.index == 0) // Mostrar icono solo en la pestaña 'Gold'
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: IconButton(icon: const Icon(
                                  FontAwesomeIcons.registered
                                ), onPressed: () {  },)
                              ),
                            Text(
                              'Donar',
                              style: TextStyle(
                                color: _tabController.index == 0                                
                                          ? const Color.fromARGB(255, 3, 20, 36)
                                          : Colors.white
                              ), // Color cuando está seleccionado
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            if (_tabController.index == 1) 
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child:  IconButton(icon: const Icon(
                                  FontAwesomeIcons.circleDollarToSlot
                                ), onPressed: () {  },),
                              ),
                            Text(
                              'Adoptar',
                              style: TextStyle(
                                  color: _tabController.index == 1
                                      ? const Color(0xFF003366)
                                      : Colors.white), // Cambiar color cuando está seleccionado
                            ),
                          ],
                        ),
                      ),
                    ],
                    indicator: _tabGradient,
                    labelColor: const Color(0xFF003366),
                    unselectedLabelColor: Colors.black,
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight
                            .bold), // Otras personalizaciones de estilo para el texto seleccionado
                    unselectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight
                            .normal), // Otras personalizaciones de estilo para el texto no seleccionado
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
                Center(child: ScreensDonar()),
                Center(child: ScreensAdoptar()),
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
      }
    );
  }
}
