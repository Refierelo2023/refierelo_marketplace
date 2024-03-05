import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/donation/pop_donation.dart';
import 'package:refierelo_marketplace/data/screens/screen_reward_user/btn_recompesas.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import '../Register/components/components.dart';
import '../helpers/helpers.dart';

class RecompensasTab extends StatefulWidget {
  const RecompensasTab(
      {required this.changeTab, required this.tabController, super.key});

  final Function changeTab;
  final TabController tabController; // controlador para index tabBar

  @override
  State<RecompensasTab> createState() => _RecompensasTabState();
}

class _RecompensasTabState extends State<RecompensasTab> {
  Future<void> update() async {
    onLoading(context);
    try {
      var channel = getChannel();
      var response = await ServiceClient(channel).getReferente(
          getReferenteRequest(
              sessionString: (await SessionManager().get('sessionString'))));
      channel.shutdown();

      setState(() {
        context.read<ReferenteProvider>().referenteGlobal!.puntosEnProceso =
            response.puntosEnProceso;
        context.read<ReferenteProvider>().referenteGlobal!.puntos =
            int.tryParse(response.puntos) ?? 0;
      });
    } on GrpcError catch (e) {
      toast(e.message ?? 'Hubo un error.', Colors.red);
    } on Exception {
      toast('Hubo un error.', Colors.red);
    } finally {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final referente = context.watch<ReferenteProvider>();

    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white
            // statusBarColor: Theme.of(context).bottomAppBarColor
            ),
        child: Scaffold(
          backgroundColor: const Color(0xFFF5F6F9),
          body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SafeArea(
              child: ListView(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.99,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFF5F6F9),
                        Color(0xFFF5F6F9),
                      ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: size.height * 0.27,
                          width: size.width * 0.9,
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02,
                              vertical: size.height * 0.02),
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.04,
                            vertical: size.height * 0.02,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: const LinearGradient(
                                colors: [Color(0xff003366), Color(0xff02B5E7)]),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CustomFontAileronBold2White(
                                    text: 'Recompensas',
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(height: size.height * 0.04),
                                  Text(
                                    '${referente.referenteGlobal?.nombres} ${referente.referenteGlobal?.apellidos}',
                                    style: const CustomFontAileronSemiBoldWhite(
                                            text: " ")
                                        .getTextStyle(context)
                                        .copyWith(height: 1.5),
                                  ),
                                  SizedBox(height: size.height * 0.03),
                                  Text(
                                    'Tienes ${referente.referenteGlobal?.puntos} puntos',
                                    style: const CustomFontAileronSemiBoldWhite(
                                            text: " ")
                                        .getTextStyle(context)
                                        .copyWith(height: 1.5),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  Text(
                                    '1 Punto = \$25 COP',
                                    style: const CustomFontAileronRegularWhite(
                                      text: " ",
                                      fontSize: 0.03,
                                    )
                                        .getTextStyle(context)
                                        .copyWith(height: 1.5),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: size.height * 0.03),
                                  Image.asset(
                                    'assets/images/images_main/coin.png',
                                    height: size.height * 0.2,
                                    // width: size.width * 0.2,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.9,
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02),
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.02,
                          ),
                          child: FractionallySizedBox(
                            widthFactor: 1.05,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFffffff),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: size.height * 0.01),
                                        child: Text(
                                          'Puntos ganados',
                                          style: const CustomFontAileronRegular(
                                                  text: " ")
                                              .getTextStyle(context)
                                              .copyWith(height: 1.5),
                                        ),
                                      ),
                                      SizedBox(height: size.height * 0.02),
                                      Text(
                                        referente.referenteGlobal?.puntos
                                                .toString() ??
                                            "0",
                                        style: const TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 23,
                                          fontFamily: "Aileron",
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: update,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/recompensas_tab/refresh.png',
                                              height: size.height * 0.06,
                                              width: size.width * 0.06,
                                            ),
                                            SizedBox(width: size.width * 0.02),
                                            Text(
                                              'Actualizar',
                                              style:
                                                  const CustomFontAileronRegular(
                                                          text: " ")
                                                      .getTextStyle(context)
                                                      .copyWith(height: 1),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: size.height * 0.001),
                                      CustomFontAileronRegular(
                                        text:
                                            'Válido hasta: ${referente.referenteGlobal?.puntosFechaVencimiento != null ? getDate(referente.referenteGlobal!.puntosFechaVencimiento, hour: false) : "N/A"}',
                                        fontSize: 0.035,
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: size.height * 0.01),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Redime tus puntos',
                                        style: const CustomFontAileronRegular(
                                                text: " ")
                                            .getTextStyle(context)
                                            .copyWith(height: 1),
                                      ),
                                      SizedBox(height: size.height * 0.015),
                                      BtnRecompensas(
                                        titulo: 'Store',
                                        callback: () {
                                          widget.tabController.animateTo(0);
                                        },
                                      ),
                                      BtnYellowButton(
                                          titulo: 'Donar',
                                          callback: () {
                                            PopDonation.showLoginPop(context);
                                          }),
                                      // BtnRecompensas(
                                      //     titulo: 'Efectivo', callback: () {}),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Container(
                          width: size.width * 0.9,
                          height: size.height * 0.18,
                          margin: EdgeInsets.symmetric(
                            horizontal: size.width * 0.02,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.02,
                          ),
                          child: FractionallySizedBox(
                            widthFactor: 1.05,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFffffff),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          'Puntos en proceso',
                                          style: const CustomFontAileronRegular(
                                                  text: " ")
                                              .getTextStyle(context)
                                              .copyWith(height: 1),
                                        ),
                                      ),
                                      SizedBox(height: size.height * 0.01),
                                      Text(
                                        '${referente.referenteGlobal?.puntosEnProceso ?? "0"}',
                                        style: const TextStyle(
                                          color: Color(0xff00DFEE),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 23,
                                        ),
                                      ),
                                      SizedBox(height: size.height * 0.01),
                                      GestureDetector(
                                        onTap: update,
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/recompensas_tab/refresh.png',
                                              height: size.height * 0.04,
                                              width: size.width * 0.06,
                                            ),
                                            SizedBox(width: size.width * 0.02),
                                            Text(
                                              'Actualizar',
                                              style:
                                                  const CustomFontAileronRegular(
                                                          text: " ")
                                                      .getTextStyle(context)
                                                      .copyWith(height: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: size.height * 0.04),
                                      BtnRecompensas(
                                          titulo: 'Consultar',
                                          callback: () {
                                            print("Animating to tab 2");
                                            widget.tabController.animateTo(2);
                                          }),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Container(
                          width: size.width * 0.9,
                          height: size.height * 0.25,
                          margin: EdgeInsets.symmetric(
                            horizontal: size.width * 0.01,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.01,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // Navegar a ShareScreen cuando se toque la imagen
                              widget.tabController.animateTo(3);
                            },
                            child: Image.asset(
                              'assets/images/comparte_y_gana/bannercomparteygana.png',
                              height: size.height * 0.1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
