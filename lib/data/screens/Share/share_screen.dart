import 'dart:io';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/contact_user.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/copy_clipboard.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/section_content.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/section_share.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/show_all.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/social_button.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/title_content.dart';
import 'package:refierelo_marketplace/data/screens/home/components/bottom_navigation.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:http/http.dart' as http;
import '../Register/components/components.dart';

class ShareScreen extends StatefulWidget {
  final bool showAppbar;
  const ShareScreen({super.key, required this.showAppbar});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  recursosResponse? imagen;
  recursosResponse? video;
  String videoId = '';

  List<Contact> contacts = [];
  bool contactsLoaded = false;

  @override
  void initState() {
    super.initState();
    getPermissions();
    var channel = getChannel();

    var rec = [];
    ServiceClient(channel)
        .getRecursos(recursosRequest(
            idComponente: 2,
            sessionString: context
                .read<ReferenteProvider>()
                .referenteGlobal
                ?.sessionString,
            idreferente:
                context.read<ReferenteProvider>().referenteGlobal?.idreferente))
        .listen((value) {
      if (value.tipoRecurso == 'imagen') {
        setState(() {
          imagen = value;
        });
      }
      if (value.tipoRecurso == 'video') {
        setState(() {
          video = value;
          // videoId = YoutubePlayer.convertUrlToId(value.path) ?? '';
        });
      }
    }).onDone(() {
      rec = rec;
      rec = rec;
      channel.shutdown();
    });
  }

  getPermissions() async {
    if (await Permission.contacts.request().isGranted) {
      getAllContacts();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  getAllContacts() async {
    List<Contact> contacts = (await ContactsService.getContacts()).toList();

    setState(() {
      contacts = contacts;
      contactsLoaded = true;
    });
  }

  void setNullRecurso(String tipoRecurso){
    setState(() {
      if (tipoRecurso == 'video') {
        video = null;
      }else{
        imagen = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff02B5E7), Color(0xff003366)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // MOSTRAR APPBAR
        appBar: (widget.showAppbar)? AppBar(
      leading: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () => Navigator.pop(context),
        icon:
            const Icon(Icons.chevron_left, color: Color(0xff003366), size: 40),
      ),
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      toolbarHeight: size.height*0.04,
    ):null,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child:
                      Image.asset('assets/images/comparte_y_gana/bannercomparteygana.png'),
                ),
                const TitleContent(title: 'Invita a tus amigos', fontSize: 19,),
                const SectionContent(
                    content:
                        'Tú ganas 20 puntos por cada amigo que se registre en la aplicación, y tu amigo gana 10 puntos de bienvenida.', fontSize: 12),
                const ShowAllContacts(),
                Container(
                    height: size.height * 0.285,
                    width: size.width,
                    margin: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.04),
                        padding: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.23),
                        borderRadius: BorderRadius.circular(10)),
                    child: (contactsLoaded == true)
                        ? contacts.isNotEmpty
                            ? ListView.builder(
                                shrinkWrap: true,
                                itemCount: contacts.length >= 3
                                    ? 3
                                    : (contacts.length == 2 ? 2 : 1),
                                itemBuilder: (context, index) {
                                  return ContactUser(
                                      nameContact:
                                          contacts[index].displayName ??
                                              'Sin nombre',
                                      phoneContact:
                                          contacts[index].phones ?? [],
                                      initialsContact:
                                          contacts[index].initials());
                                })
                            : const Center(
                                child: Text(
                                'No hay contactos para mostrar.',
                                style: TextStyle(color: Colors.white),
                              ))
                        : const Center(
                            child: Text(
                              'Cargando...',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                if (imagen != null) const TitleContent(title: 'Conquista a otros contactos', fontSize: 19),
                if (imagen != null) const SectionContent(
                    content:
                        'Descarga la imagen publícala en tus redes, si te preguntan comparte el link y gana miles de puntos más.', fontSize: 12),
                if (imagen != null) SectionShare(image: imagen!, callback: setNullRecurso,),
                if (imagen != null) CopyClipboard(path: imagen?.path??''),
                if (video != null) const TitleContent(title: '¿Tus amigos tienen dudas?', fontSize: 19),
                if (video != null) const SectionContent(
                    content: 'Comparte nuestro video corporativo', fontSize: 12,),
                // if (video != null) YoutubeComponent(videoId: videoId, ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                if (video != null)
                  Center(
                      child: GestureDetector(
                    onTap: (() async {
                      try {
                        await Clipboard.setData(
                            ClipboardData(text: video!.path));
                        Fluttertoast.showToast(
                            msg: 'Copiado',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } catch (e) {
                        // error
                      }
                    }),
                    // child: const ShareBtnYoutube(
                    //   title: 'Copiar Link',
                    //   img: 'assets/images/como_funciona/youtube.png',
                    // ),
                  )),
                SizedBox(
                  height: size.height * 0.01,
                ),
                if (imagen != null) const TitleContent(title: 'LLega a tus redes sociales', fontSize: 19),
                if (imagen != null) const SectionContent(
                    content:
                        '¡Haz que tus amigos se unan a nuestra comunidad de Referentes!', fontSize: 12,),
                if (imagen != null) Container(
                  height: size.height * 0.13,
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.01,
                      horizontal: size.width * 0.04),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.23),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final url = Uri.parse(imagen?.path??'');
                          final response = await http.get(url);
                          final bytes = response.bodyBytes;

                          final temp = await getTemporaryDirectory();
                          final path = '${temp.path}/image.jpg';
                          File(path).writeAsBytesSync(bytes);

                          final FlutterShareMe flutterShareMe =
                              FlutterShareMe();

                          await flutterShareMe.shareToMessenger(
                              msg: '1', url: path);

                          final urlShare =
                              Uri.encodeComponent(imagen?.path ?? '');
                          // final urlShare = Uri.encodeComponent(
                          //     "https://www.youtube.com/watch?v=bWehAFTFc9o");

                          // var link ='https://www.facebook.com/sharer/sharer.php?u=$urlShare';
                          // var link ='https://www.facebook.com/sharer/sharer.php?u=$urlShare&t=hola';

                          // await launchUrl(Uri.parse(link),
                          //     mode: LaunchMode.externalApplication);

                          await asignarPuntos();
                        },
                        child: const SocialButton(
                            img: 'assets/images/images_display/facebook.png',
                            title: 'Facebook'),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final url = Uri.parse(imagen?.path ?? '');
                          final response = await http.get(url);
                          final bytes = response.bodyBytes;

                          final temp = await getTemporaryDirectory();
                          final path = '${temp.path}/image.jpg';
                          File(path).writeAsBytesSync(bytes);
                          final FlutterShareMe flutterShareMe =
                              FlutterShareMe();
                          flutterShareMe.shareToInstagram(
                              filePath: path, fileType: FileType.image);

                          await asignarPuntos();
                        },
                        child: const SocialButton(
                            img: 'assets/images/images_display/instagram.png',
                            title: 'Instagram'),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final url = Uri.parse(imagen?.path ?? '');
                          final response = await http.get(url);
                          final bytes = response.bodyBytes;

                          final temp = await getTemporaryDirectory();
                          final path = '${temp.path}/image.jpg';
                          final FlutterShareMe flutterShareMe =
                              FlutterShareMe();
                          flutterShareMe.shareToWhatsApp(
                              fileType: FileType.image,
                              imagePath: path,
                              msg: '');

                          // if (result.status == ShareResultStatus.success) {
                          // await asignarPuntos();
                          // } else {
                          //   Fluttertoast.showToast(
                          //       msg: 'No compartido.',
                          //       toastLength: Toast.LENGTH_SHORT,
                          //       gravity: ToastGravity.BOTTOM,
                          //       timeInSecForIosWeb: 1,
                          //       backgroundColor: Colors.orange,
                          //       textColor: Colors.white,
                          //       fontSize: 16.0);
                          // }
                        },
                        child: const SocialButton(
                            img: 'assets/images/images_display/whatsApp.png',
                            title: 'WhatsApp'),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final url = Uri.parse(imagen?.path ?? '');
                          final response = await http.get(url);
                          final bytes = response.bodyBytes;

                          final temp = await getTemporaryDirectory();
                          final path = '${temp.path}/image.jpg';
                          File(path).writeAsBytesSync(bytes);

                          String msgSend = '';

                          var result =
                              // ignore: deprecated_member_use
                              await Share.shareFilesWithResult([path],
                                  text: msgSend);

                          if (result.status == ShareResultStatus.success) {
                            await asignarPuntos();
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
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width * 0.15,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: size.height * 0.02),
                              Image.asset(
                                'assets/images/mi_actividad/1.png',
                                height: size.height * 0.04,
                                width: size.width * 0.2,
                              ),
                              SizedBox(height: size.height * 0.02),
                              const Text('Más...',
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.09,)
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }

  Future<void> asignarPuntos() async {
    try {
      var channel = getChannel();
      var response = await ServiceClient(getChannel()).asignarPuntos(
          asignarPuntosRequest(
              sessionString: (await SessionManager().get('sessionString')),
              configCodigo: imagen?.configCodigo,
              date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
              idRecurso: imagen?.idRecurso
              )              
              );

      channel.shutdown();

      context
          .read<ReferenteProvider>()
          .actualizarPuntos(int.tryParse(response.puntos.toString()) ?? 0);
      setState(() {
        imagen = null;
      });
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
  }
}
