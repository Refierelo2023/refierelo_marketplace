import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/contact_user.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/section_content.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/section_share.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/share_btn_youtube.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/show_all.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/social_button.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/youtube_component.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:share_plus/share_plus.dart';


class ShareScreen extends StatefulWidget {

  const ShareScreen({super.key,});

  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  recursosResponse? imagen;
  recursosResponse? video;
  String videoId = '';

  List<Contact> contacts = [];
  bool contactsLoaded = false;

  // @override
  // void initState() {
  //   super.initState();
  //   getPermissions();
  //   var channel = getChannel();

  //   var rec = [];
  //   // ServiceClient(channel)
  //   //     .getRecursos(recursosRequest(
  //   //         idComponente: 2,
  //   //         sessionString: context
  //   //             .read<ReferenteProvider>()
  //   //             .referenteGlobal
  //   //             ?.sessionString,
  //   //         idreferente:
  //   //             context.read<ReferenteProvider>().referenteGlobal?.idreferente))
  //       .listen((value) {
  //     if (value.tipoRecurso == 'imagen') {
  //       setState(() {
  //         imagen = value;
  //       });
  //     }
  //     if (value.tipoRecurso == 'video') {
  //       setState(() {
  //         video = value;
  //         videoId = YoutubePlayer.convertUrlToId(value.path) ?? '';
  //       });
  //     }
  //   }).onDone(() {
  //     rec = rec;
  //     rec = rec;
  //     channel.shutdown();
  //   });
  // }

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
              end: Alignment.bottomCenter,
            ),
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child:Image.asset(
                    'assets/images/comparte_y_gana/bannercomparteygana.png'
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CustomFontAileronSemiBoldWhite(text: "Invita a tus amigos",                
                    ),
                  ),
                ),
                const SectionContent(
                    content:'Tú ganas 20 puntos por cada amigo que se registre en la aplicación, y tu amigo gana 10 puntos de bienvenida.', fontSize: 12),
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
                                child: CustomFontAileronRegularWhite(
                                  text: 'No hay contactos para mostrar.',
                                  ),
                              )
                        : const Center(
                            child: CustomFontAileronRegularWhite(
                                text:  'Cargando...',
                              ),
                            )
                          ),
                          const Padding(
                  padding: EdgeInsets.only(left: 16, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CustomFontAileronSemiBoldWhite(text: "Conquista otros contactos",                
                    ),
                  ),
                ),             
                const SectionContent(
                    content: 'Descarga la imagen publícala en tus redes, si te preguntan comparte el link y gana miles de puntos más.'),
                SizedBox(height: size.height * 0.01),
                SectionShare(callback:setNullRecurso),
                SizedBox(height: size.height * 0.01),
                // CopyClipboard(path: imagen?.path??''),
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CustomFontAileronSemiBoldWhite(text: "¿ Tus amigos tienen dudas ?",                
                    ),
                  ),
                ),  
                const SectionContent(
                    content: 'Comparte nuestro video corporativo'),
                YoutubeComponent(videoId: videoId),
                SizedBox(height: size.height * 0.02),
                    Center(
                      child: GestureDetector(
                    onTap: (() async {
                      try {
                        // await Clipboard.setData(
                        //     ClipboardData(text: video!.path));
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
                    child: const ShareBtnYoutube(
                      title: 'Copiar Link',
                      img: 'assets/images/comparte_y_gana/youtube.png',
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CustomFontAileronSemiBoldWhite(text: "Llega a tus redes sociales",                
                    ),
                  ),
                ),
               const SectionContent(
                    content:'¡Haz que tus amigos se unan a nuestra comunidad de Referentes!',
                  ),
               Container(
                  height: size.height * 0.16,
                  margin: EdgeInsets.symmetric(
                      vertical: size.height * 0.015,
                      horizontal: size.width * 0.04),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.23),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          // GestureDetector(
                          //   onTap: () async {
                          //     final url = Uri.parse(imagen?.path??'');
                          //     final response = await http.get(url);
                          //     final bytes = response.bodyBytes;
                          
                          //     final temp = await getTemporaryDirectory();
                          //     final path = '${temp.path}/image.png';
                          //     File(path).writeAsBytesSync(bytes);
                          
                          //     final FlutterShareMe flutterShareMe =
                          //         FlutterShareMe();                          
                          //     await flutterShareMe.shareToMessenger(
                          //         msg: '1', url: path);                          
                          //     final urlShare1 = Uri.encodeComponent(imagen?.path ?? '');
                          //     final urlShare2 = Uri.encodeComponent("https://www.youtube.com/watch?v=g04Z6XRAyNg");
                          //     var link1 ='https://www.facebook.com/sharer/sharer.php?u=$urlShare1';
                          //     var link2 ='https://www.facebook.com/sharer/sharer.php?u=$urlShare2&t=hola';
                          //     await launchUrl(Uri.parse(link1),
                          //         mode: LaunchMode.externalApplication);                          
                          //     await asignarPuntos();
                          //   },
                          //   child: const SocialButton(
                          //       img: 'assets/images/images_display/facebook.png',
                          //       title: 'Facebook'),
                          // ),
                        ],
                      ),
                      // Column(
                      //   children: [
                      //     GestureDetector(
                      //       onTap: () async {
                      //         final url = Uri.parse(imagen?.path ?? '');
                      //         final response = await http.get(url);
                      //         final bytes = response.bodyBytes;
                          
                      //         final temp = await getTemporaryDirectory();
                      //         final path = '${temp.path}/image.png';
                      //         File(path).writeAsBytesSync(bytes);
                      //         final FlutterShareMe flutterShareMe =
                      //             FlutterShareMe();
                      //         flutterShareMe.shareToInstagram(
                      //             filePath: path, fileType: FileType.image);                          
                      //         await asignarPuntos();
                      //       },
                      //       child: const SocialButton(
                      //           img: 'assets/images/images_display/instagram.png',
                      //           title: 'Instagram'),
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   children: [
                      //     GestureDetector(
                      //       onTap: () async {
                      //         final url = Uri.parse(imagen?.path ?? '');
                      //         final response = await http.get(url);
                      //         final bytes = response.bodyBytes;                          
                      //         final temp = await getTemporaryDirectory();
                      //         final path = '${temp.path}/image.png';
                      //         final FlutterShareMe flutterShareMe =
                      //             FlutterShareMe();
                      //         flutterShareMe.shareToWhatsApp(
                      //             fileType: FileType.image,
                      //             imagePath: path,
                      //             msg: '');
                      //       },
                      //       child: const SocialButton(
                      //           img: 'assets/images/images_display/whatsApp.png',
                      //           title: 'WhatsApp'),
                      //     ),
                      //   ],
                      // ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () async {
                              // final url = Uri.parse(imagen?.path ?? '');
                              // final response = await http.get(url);
                              // final bytes = response.bodyBytes;
                          
                              final temp = await getTemporaryDirectory();
                              final path = '${temp.path}/image.png';
                              // File(path).writeAsBytesSync(bytes);
                          
                              String msgSend = '';
                          
                              var result =
                                  // ignore: deprecated_member_use
                                  await Share.shareFilesWithResult([path],
                                      text: msgSend);
                          
                              if (result.status == ShareResultStatus.success) {
                                // await asignarPuntos();
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
                            child:const SocialButton(
                                img: 'assets/images/images_display/compartir.png',
                                title: 'Más...'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: size.height*0.09,)
              ],
            ),
          ),
        ),
        // bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }

  // Future<void> asignarPuntos() async {
  //   try {
  //     var channel = getChannel();
  //     var response = await ServiceClient(getChannel()).asignarPuntos(
  //         asignarPuntosRequest(
  //             sessionString: (await SessionManager().get('sessionString')),
  //             configCodigo: imagen?.configCodigo,
  //             date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
  //             idRecurso: imagen?.idRecurso
  //             )              
  //             );

  //     channel.shutdown();

  //     context
  //         .read<ReferenteProvider>()
  //         .actualizarPuntos(int.tryParse(response.puntos.toString()) ?? 0);
  //     setState(() {
  //       imagen = null;
  //     });
  //   } on GrpcError catch (e) {
  //     Fluttertoast.showToast(
  //         msg: e.message ?? 'Hubo un error.',
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.BOTTOM,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.orange,
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //   } on Exception {
  //     Fluttertoast.showToast(
  //         msg: 'Hubo un error.',
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.BOTTOM,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.orange,
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //   }
  // }
}

class recursosResponse {
}
