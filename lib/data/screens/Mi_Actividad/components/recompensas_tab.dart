import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/btn_recompesas.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import '../../Register/components/components.dart';
import '../../helpers/helpers.dart';

class RecompensasTab extends StatefulWidget {
  const RecompensasTab({required this.changeTab, super.key});

  final Function changeTab;

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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height * 0.963,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff003366), Color(0xff02B5E7)])),
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
                        vertical: size.height * 0.02),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.15)
                        // gradient: const LinearGradient(
                        //     colors: [Color(0xff003366), Color(0xff02B5E7)])
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
                                style: const CustomFontAileronSemiBoldWhite(text: " ").getTextStyle(context).copyWith(height: 1.5),
                              ),
                            SizedBox(height: size.height * 0.03),
                            Text(
                              'Tienes ${referente.referenteGlobal?.puntos} puntos',
                              style: const CustomFontAileronSemiBoldWhite(text: " ").getTextStyle(context).copyWith(height: 1.5),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(height: size.height * 0.001),
                            Text(
                              '1 Punto = \$25 COP',
                              style: const CustomFontAileronRegularWhite(text: " ").getTextStyle(context).copyWith(height: 1.5),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height * 0.03,
                            ),
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
                      height: size.height * 0.24,
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02,
                          vertical: size.height * 0.01),
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02,
                          vertical: size.height * 0.02),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Puntos ganados',
                                    style: const CustomFontAileronRegularWhite(text: " ").getTextStyle(context).copyWith(height: 1.5),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Text(
                                    referente.referenteGlobal?.puntos
                                            .toString() ??
                                        "0",
                                    style: const TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23),
                                  ),
                                  GestureDetector(
                                    onTap: update,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/recompensas_tab/refresh.png',
                                          height: size.height * 0.1,
                                          width: size.width * 0.06,
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        Text(
                                          'Actualizar',
                                          style: const CustomFontAileronRegularWhite(text: " ").getTextStyle(context).copyWith(height: 1.5),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,                                
                                children: [
                                  Text(
                                    'Redimir',
                                    style: const CustomFontAileronRegularWhite(text: " ").getTextStyle(context).copyWith(height: 1.5),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  BtnRecompensas(
                                      titulo: 'Ir a la tienda',
                                      callback: () {}),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  BtnRecompensas(
                                      titulo: 'Efectivo', callback: () {}),
                                ],
                              ),
                            ],
                          ),
                          CustomFontAileronRegularWhite(
                            text: 'Válido hasta: ${referente.referenteGlobal?.puntosFechaVencimiento != null ? getDate(referente.referenteGlobal!.puntosFechaVencimiento, hour: false) : "N/A"}',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  // Container(
                  //   width: size.width,
                  //   height: size.height * 0.22,
                  //   margin: EdgeInsets.symmetric(
                  //       horizontal: size.width * 0.02, vertical: size.height * 0.01),
                  //   padding: EdgeInsets.symmetric(
                  //       horizontal: size.width * 0.04, vertical: size.height * 0.02),
                  //   decoration: BoxDecoration(
                  //       color: const Color(0xffeff3f3),
                  //       borderRadius: BorderRadius.circular(10)),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Column(
                  //         children: [
                  //           const Text(
                  //             'Puntos por vencer',
                  //             style: TextStyle(color: Colors.black),
                  //           ),
                  //           SizedBox(
                  //             height: size.height * 0.02,
                  //           ),
                  //           const Text(
                  //             '0.00',
                  //             style: TextStyle(
                  //                 color: Colors.red,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 20),
                  //           ),
                  //           Row(
                  //             children: [
                  //               Image.asset(
                  //                 'assets/images/refresh.png',
                  //                 height: size.height * 0.1,
                  //                 width: size.width * 0.1,
                  //               ),
                  //               SizedBox(width: size.width * 0.02),
                  //               const Text(
                  //                 'Actualizar',
                  //                 style: TextStyle(color: Colors.black),
                  //               ),
                  //             ],
                  //           )
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    width: size.width * 0.9,
                    height: size.height * 0.175,
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02),
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.02),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Puntos en proceso',
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Text(
                              '${referente.referenteGlobal?.puntosEnProceso ?? "0"}',
                              style: const TextStyle(
                                color: Color(0xff00DFEE),
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.025,
                            ),
                            GestureDetector(
                              onTap: update,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/recompensas_tab/refresh.png',
                                    // height: size.height * 0.0,
                                    width: size.width * 0.06,
                                  ),
                                  SizedBox(width: size.width * 0.02),
                                  const Text(
                                    'Actualizar',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: size.height * 0.04),
                            BtnRecompensas(
                              titulo: 'Consultar',
                              callback: widget.changeTab,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
