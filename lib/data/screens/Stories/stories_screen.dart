import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grpc/grpc.dart';
// import 'package:image_downloader/image_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/main.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:story/story.dart';
import 'package:http/http.dart' as http;
import 'package:share_plus/share_plus.dart';
import '../Register/components/components.dart';

// Usuario que sube historias
class UserModel {
  UserModel(
    this.stories, 
    this.userName, 
    this.imageUrl
    );

  final List<StoryModel> stories;
  final String userName;
  final String imageUrl;
}

// Historia
class StoryModel {
  StoryModel(
    this.imageUrl, 
    this.configCodigo, 
    this.idRecurso
  );

  final String imageUrl;
  final String configCodigo;
  final int idRecurso;
}

// Pantalla donde se mostrarán las historias
class StoriesScreen extends StatefulWidget {
  const StoriesScreen({super.key, required this.sampleUsers});

  final List<UserModel> sampleUsers;

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  String configCodigo = '';

  ValueNotifier<IndicatorAnimationCommand>? indicatorAnimationController;

  @override
  void initState() {
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.resume);

    super.initState();
  }

  @override
  void dispose() {
    indicatorAnimationController?.dispose();
    // ignore:todo
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: StoryPageView(
        indicatorAnimationController: indicatorAnimationController,
        itemBuilder: (context, pageIndex, storyIndex) {
          final user = widget.sampleUsers[pageIndex];
          final story = user.stories[storyIndex];
          return Stack(
            children: [
              Positioned.fill(
                  child: Container(
                color: Colors.black,
                padding: EdgeInsets.only(
                    bottom: size.height * 0.065, top: size.height * 0.095),
                child: Image.network(
                  story.imageUrl,
                  fit: BoxFit.fitWidth,
                ),
              )),
            ],
          );
        },
        gestureItemBuilder: (context, pageIndex, storyIndex) {
          return Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                    padding: const EdgeInsets.only(top: 34, right: 12),
                    child: GestureDetector(
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            'más',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          )
                        ],
                      ),
                      onTap: () {
                        indicatorAnimationController?.value =
                            IndicatorAnimationCommand.pause;
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return const Wrap(
                                children: [
                                  ListTile(
                                    // leading: IconButton(
                                    //   onPressed: () async {
                                    //     final user =
                                    //         widget.sampleUsers[pageIndex];
                                    //     final story = user.stories[storyIndex];

                                    //     try {
                                    //       var imageId = await ImageDownloader
                                    //           .downloadImage(story.imageUrl);
                                    //       if (imageId == null) {
                                    //         toast('No se pudo descargar.',
                                    //             Colors.red);
                                    //       } else {
                                    //         toast('Imagen guardada',
                                    //             Colors.green);
                                    //       }
                                    //       Navigator.of(context).pop();
                                    //     } on PlatformException {
                                    //       toast('No se pudo descargar.',
                                    //           Colors.red);
                                    //     }
                                    //   },
                                    //   icon: const Icon(Icons.file_download),
                                    // ),
                                    title: Text('Descargar'),
                                  )
                                ],
                              );
                            }).then((value) {
                          indicatorAnimationController?.value =
                              IndicatorAnimationCommand.resume;
                        });
                      },
                    )),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: GestureDetector(
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.near_me,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text('Publicar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11))
                        ],
                      ),
                      onTap: () async {
                        toast('Abriendo panel de compartimiento...',
                            const Color.fromARGB(255, 70, 70, 70));
                        indicatorAnimationController?.value =
                            IndicatorAnimationCommand.resume;
                        indicatorAnimationController?.value =
                            IndicatorAnimationCommand.pause;
                        final user = widget.sampleUsers[pageIndex];
                        final story = user.stories[storyIndex];

                        final url = Uri.parse(story.imageUrl);
                        final response = await http.get(url);
                        final bytes = response.bodyBytes;

                        final temp = await getTemporaryDirectory();
                        final path = '${temp.path}/image.jpg';
                        File(path).writeAsBytesSync(bytes);

                        String msgSend = '';

                        Share.shareFiles([path], text: msgSend).then((value) {
                          print('then');
                        }).whenComplete(() {
                          print('complete');
                        }).onError((error, stackTrace) {
                          print(error);
                          print(stackTrace);
                        });
                        var result = await Share.shareFilesWithResult([path],
                            text: msgSend);

                        if (result.status == ShareResultStatus.success) {
                          try {
                            var channel = getChannel();
                            // var response = await ServiceClient(getChannel())
                            //     .asignarPuntos(asignarPuntosRequest(
                            //         sessionString: (await SessionManager()
                            //             .get('sessionString')),
                            //         configCodigo:
                            //             user.stories[storyIndex].configCodigo,
                            //         date: DateFormat('yyyy-MM-dd')
                            //             .format(DateTime.now()),
                            //         idRecurso:
                            //             user.stories[storyIndex].idRecurso));

                            channel.shutdown();

                            final referenteProvider =
                                Provider.of<ReferenteProvider>(
                              navigatorKey.currentContext!,
                              listen: false,
                            );

                            // referenteProvider.actualizarPuntos( // se usa referenteProvider
                            //     int.tryParse(response.puntos.toString()) ?? 0);
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
                        // indicatorAnimationController.value =
                        // IndicatorAnimationCommand.resume;
                      },
                    ),
                  ))
            ],
          );
        },
        pageLength: widget.sampleUsers.length,
        storyLength: (int pageIndex) {
          return widget.sampleUsers[pageIndex].stories.length;
        },
        onPageLimitReached: () async {
          Navigator.of(context).pop(true);
        },
      ),
    );
  }
}
