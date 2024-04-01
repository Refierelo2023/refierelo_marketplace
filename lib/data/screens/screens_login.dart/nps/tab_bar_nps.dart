import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_one_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_one_nps_option1.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_one_nps_option2.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_one_nps_option2_option1.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_three.nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_two_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/answer_two_nps_option1.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/question_one_nps.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/nps/registration_costumer_nps.dart';



class TabBarNps extends StatefulWidget {
  const TabBarNps({super.key});

  @override
  TabBarNpsState createState() => TabBarNpsState();
}

class TabBarNpsState extends State<TabBarNps>
    with SingleTickerProviderStateMixin {
  late TabController _tabController; // controlador para index tabBar
  Key appBarKey = UniqueKey(); // Nueva clave para el AppBar

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this, initialIndex: 0);

    _tabController.addListener(() {
      setState(() {
        appBarKey = UniqueKey();
      });
    });
  }

  void changeTab(int index) {
  _tabController.animateTo(index);
}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 9,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Scaffold(
            // appBar: AppBar(
            //   key: appBarKey, // clave para cambiar de color el icono según el index
            //   toolbarHeight: 35,
            //   // leading: IconButton(
            //   //   icon: const Icon(Icons.arrow_back),
            //   //   color: getAppBarIconColor(_tabController.index),
            //   //   onPressed: () {
            //   //     Navigator.of(context).push(
            //   //       MaterialPageRoute(
            //   //         builder: (BuildContext context) => const MyScreen(),
            //   //       ),
            //   //     );
            //   //   },
            //   // ),
            //   flexibleSpace: AnimatedBuilder(
            //     animation: _tabController.animation!,
            //     builder: (context, child) {
            //       return Container(
            //         decoration: getAppBarDecoration(_tabController.index),
            //       );
            //     },
            //   ),
            // ),
            body: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: const [
                            Center(child: RegistrationCostumerNps()),
                                  Center(child: QuestionOneNps()),
                                  Center(child: QuestionTwoNps()),
                                  Center(child: QuestionThreeNps()),
                                  Center(child: AnswerThreeNps()),
                                  Center(child: AnswerOneNpsOption1()),
                                  Center(child: AnswerOneNpsOption2()),
                                  Center(child: AnswerTwoNpsOption2()),
                                  Center(child: AnswerOneNpsOption2Option1()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Decoration getAppBarDecoration(int tabIndex) {
    if (tabIndex == 0 || tabIndex == 1) {
      // Index 0 y 1
      return const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF5F6F9), Color(0xFFF5F6F9)],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
      );
    } else if (tabIndex == 2) {
      // Index 2
      return const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff003366), Color(0xff02B5E7)],
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
        ),
      );
    } else {
      // Index 3 y 4
      return const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff02B5E7), Color(0xff02B5E7)],
          begin:Alignment.bottomCenter, 
          end:Alignment.topCenter,
        ),
      );
    }
  }

  Color getAppBarIconColor(int tabIndex) {
    return tabIndex == 2 || tabIndex == 3
        ? Colors.white
        : Colors.black; // Cambiar el color del ícono según el índice
  }
}
