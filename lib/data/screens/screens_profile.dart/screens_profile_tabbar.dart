import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_type_company.dart';
import 'package:refierelo_marketplace/data/screens/screens_profile.dart/screen_list_referentes.dart';



class ScreensProfileTabBar extends StatefulWidget {
  const ScreensProfileTabBar({super.key});

  @override
  ScreensProfileTabBarState createState() => ScreensProfileTabBarState();
}

class ScreensProfileTabBarState extends State<ScreensProfileTabBar> {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 30,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => const LoginTypeCompany(),
              ),
            );
          },
        ),
      ),
      body: const Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Align(
                //   alignment: Alignment.center,
                //   child: CustomFontAileronBold2(
                //     text: 'Top Referentes',
                //   ),
                // ),
                // SizedBox(height: 10),
                // CustomFontAileronRegular(
                //   text:
                //       'Aquí encontraras el listado de usuarios que refieren tu marca y cuales se destacan como embajadores',
                // ),
                DefaultTabController(
                  length: 2,
                  child: TabBar(
                      labelColor: Color(0xFF003366),
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Color(0xFF003366),
                      tabs: <Widget>[
                        Tab(
                            icon: Text(
                          "Referentes",
                          style: TextStyle(fontFamily: "Aileron", fontSize: 17),
                        )),
                        Tab(
                            icon: Text(
                          "Referidos",
                          style: TextStyle(fontFamily: "Aileron", fontSize: 17),
                        ))
                      ],
                    ),
                ),
                  Expanded(                    
                    child: DefaultTabController(
                      length: 2,
                      child: TabBarView(children: [
                        Center(
                          child: ScreensListReferentes(),
                        ),
                        Center(child: ScreensListReferentes())
                      ]),
                    ),
                  ),
              ],
            ),
          ),                 
        ],
      ),             
    );
  }
}
