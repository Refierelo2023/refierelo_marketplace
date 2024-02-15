import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/mi_actividad_tab.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/recompensas_tab.dart';
import 'package:refierelo_marketplace/data/screens/Share/share_screen.dart';


class MiActividadScreen extends StatefulWidget {
  const MiActividadScreen({super.key});

  @override
  State<MiActividadScreen> createState() => _MiActividadScreenState();
}

class _MiActividadScreenState extends State<MiActividadScreen> with TickerProviderStateMixin {

late TabController tabController;

@override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  void changeTab(){
    setState(() {
      tabController.index = 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return 
    DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: size.height * 0.07,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size(size.width, size.height * 0.03),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)])
                ),
                width: size.width * 1,
                child: TabBar(
                  isScrollable: true,
                  controller: tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Colors.white,
                  tabs: [
                    SizedBox(
                        height: size.height * 0.1,
                        width: size.width * 0.3,
                        child: const Tab(
                          text: 'Recompensas',
                        )),
                    SizedBox(
                        height: size.height * 0.1,
                        width: size.width * 0.3,
                        child: const Tab(
                          text: 'Mi actividad',
                        )),
                    SizedBox(
                        height: size.height * 0.1,
                        width: size.width * 0.32,
                        child: const Tab(
                          text: 'Comparte y Gana',
                        ))
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              RecompensasTab(changeTab: changeTab),
              const MiActividadTab(),
              const ShareScreen(showAppbar: false,)
            ],
          )
        ),)
      );
  }
}
