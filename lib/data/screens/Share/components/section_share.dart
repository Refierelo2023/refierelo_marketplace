import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grpc/grpc.dart';
import 'package:http/http.dart' as http;
// import 'package:image_downloader/image_downloader.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../Register/components/components.dart';

class SectionShare extends StatefulWidget {
  const SectionShare({required this.callback, required this.image, super.key});

  final recursosResponse image;

  final Function(String) callback;

  @override
  State<SectionShare> createState() => _SectionShareState();
}

class _SectionShareState extends State<SectionShare> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  widget.image.path,
                  width: size.width * 0.3,
                  height: size.height * 0.3,
                ),
                Image.asset(
                  'assets/images/comparte_y_gana/banner_2.png',
                  width: size.width * 0.3,
                  height: size.height * 0.3,
                )
              ],
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.transparent,
                          content: Container(color: Colors.transparent, height: 400, width: 500, child: PhotoView(
                              backgroundDecoration: const BoxDecoration(color: Colors.transparent),
                              imageProvider: NetworkImage(widget.image.path)),),
                        );
                      });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Image.asset(
                      'assets/images/comparte_y_gana/vista_previa.png',
                      width: size.width * 0.06,
                      color: Colors.white,
                    ),
                    Text('  Vista previa',
                        style: TextStyle(
                            color: Colors.white, fontSize: size.width * 0.04))
                  ],
                )),
            const Divider(
              height: 18,
              color: Colors.transparent,
            ),
            TextButton(
                onPressed: () async {
                  final url = Uri.parse(widget.image.path);
                  final response = await http.get(url);
                  final bytes = response.bodyBytes;

                  final temp = await getTemporaryDirectory();
                  final path = '${temp.path}/image.jpg';
                  File(path).writeAsBytesSync(bytes);

                  String msgSend = '';

                  var result =
                      // ignore: deprecated_member_use
                      await Share.shareFilesWithResult([path], text: msgSend);

                  if (result.status == ShareResultStatus.success) {
                    try {
                      var channel = getChannel();
                      var response = await ServiceClient(getChannel())
                          .asignarPuntos(asignarPuntosRequest(
                              sessionString: await SessionManager().get('sessionString'),
                              configCodigo: widget.image.configCodigo,
                              date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
                              idRecurso: widget.image.idRecurso,
                              ),
                              
                              );

                      channel.shutdown();

                      context.read<ReferenteProvider>().actualizarPuntos(
                          int.tryParse(response.puntos.toString()) ?? 0);
                      widget.callback('imagen');
                    } on GrpcError catch (e) {
                      Fluttertoast.showToast(
                          msg: e.message ?? 'Hubo un error.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.orange,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    } on Exception {
                      Fluttertoast.showToast(
                          msg: 'Hubo un error.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.orange,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  } else {
                    Fluttertoast.showToast(
                        msg: 'No compartido.',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.orange,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/comparte_y_gana/compartir.png',
                      width: size.width * 0.06,
                      color: Colors.white,
                    ),
                    Text('  Compartir',
                        style: TextStyle(
                            color: Colors.white, fontSize: size.width * 0.04))
                  ],
                )),
            const Divider(
              height: 18,
              color: Colors.transparent,
            ),
            // TextButton(
            //   onPressed: () async {
            //     try {
            //       var imageId = await ImageDownloader.downloadImage(widget.image.path);
            //       if (imageId == null) {
            //         return;
            //       } else {
            //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            //           content: Text('Imagen guardada en el dispositivo'),
            //           duration: Duration(seconds: 1),
            //           action: null,
            //           // action: SnackBarAction(
            //           //   label: 'Abrir imagen',
            //           //   onPressed: () {},
            //           // ),
            //         ));
            //       }
            //     } on PlatformException {
            //       toast('No se pudo descargar.', Colors.red);
            //     }
            //   },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Image.asset(
            //         'assets/images/comparte_y_gana/descargar.png',
            //         width: size.width * 0.06,
            //         color: Colors.white,
            //       ),
            //       Text('  Descargar',
            //           style: TextStyle(
            //               color: Colors.white, fontSize: size.width * 0.04))
            //     ],
            //   ),
            // ),
          ],
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Divider(height: 12, color: Colors.transparent,),
            
            Divider(height: 12, color: Colors.transparent,),
            
          ],
        )
      ],
    );
  }
}
