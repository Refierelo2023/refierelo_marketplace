import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:image_downloader/image_downloader.dart';
import 'package:provider/provider.dart';
import 'package:refierelo_marketplace/data/screens/Ofertas/components/ofertas_btn.dart';
import 'package:refierelo_marketplace/data/screens/Options/components/custom_appbar.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/providers/referente_provider.dart';
import '../Register/components/components.dart';

class OfertasScreen extends StatefulWidget {
  const OfertasScreen({super.key});

  @override
  State<OfertasScreen> createState() => _OfertasScreenState();
}

class _OfertasScreenState extends State<OfertasScreen> {
  List<Map<recursosResponse, bool>> imagenes = [];

  bool loading = false;

  @override
  void initState() {
    super.initState();

    setState(() {
      loading = true;
    });

    var channel = getChannel();
    ServiceClient(channel)
        .getRecursos(recursosRequest(
            idComponente: 3,
            sessionString: context
                .read<ReferenteProvider>()
                .referenteGlobal
                ?.sessionString,
            idreferente:
                context.read<ReferenteProvider>().referenteGlobal?.idreferente))
        .listen((value) {
      if (value.tipoRecurso == 'imagen') {
        setState(() {
          imagenes.add({value: false});
        });
      }
    }).onDone(() {
      channel.shutdown();

      setState(() {
      loading = false;
    });
      });
  }

  Future<void> descargar() async {
    try {
      if (!imagenes.any((element) => element.entries.first.value == true)) {
        toast('Seleccione al menos una imagen.', Colors.orange);
        return;
      }
      int descargadas = 0;
      // for (var element in imagenes) {
      //   if (element.entries.first.value == true) {
      //     var imageId = await ImageDownloader.downloadImage(
      //         element.entries.first.key.path);
      //     if (imageId != null) descargadas++;
      //   }
      // }
      toast('Se descargaron $descargadas imágenes.', Colors.green);
    } catch (e) {
      toast('No se pudo descargar', Colors.red);
    }
  }

  Future<void> seleccionar() async {
    try {
      if (!imagenes.any((element) => element.entries.first.value == false)) {
        for (var element in imagenes) {
          element.update(element.entries.first.key, (value) => false);
        }
      }else{
        for (var element in imagenes) {
          element.update(element.entries.first.key, (value) => true);
        }
      }
      setState(() {});
    } catch (e) {
      //error
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const CustomAppbar(title: 'Ofertas'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Image.asset('assets/images/ofertas/banner.png'),
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffefefef),
                    borderRadius: BorderRadius.circular(20)),
                // height: size.height * 0.3,
                width: size.width,
                padding: const EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.04),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Consigue más referidos',
                        style: TextStyle(
                            color: const Color((0xff003366)),
                            fontSize: size.height * 0.025,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Text(
                      '¿Como funciona?',
                      style: TextStyle(color: Color(0xff003366)),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '1. Descarga el contenido en tu celular.',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '2. Públicalo en los estados de tus redes sociales.',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '3. A las personas que estén interesadas solo debes compartirles el link.',
                        style: TextStyle(color: Color(0xff003366)),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child:
                      Text('4. Si tu referido se registra en la oferta ganas 10 puntos y ganarás muchos más si tu referido contrata algún producto.', style: TextStyle(color: Color(0xff003366)),)
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: descargar,
                          child: const OfertasBtn(title: 'Descargar'),
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        GestureDetector(
                          onTap: seleccionar,
                          child: const OfertasBtn(title: 'Seleccionar'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              loading==true?
              const CircularProgressIndicator():
              (imagenes.isEmpty?const Text('No se encontraron ofertas'):Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var item in imagenes)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: size.width * 0.25,
                            height: size.height * 0.215,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(255, 231, 231, 231))),
                            child: Stack(
                              children: [
                                Image.network(
                                    item.entries.first.key.path,
                                    fit: BoxFit.cover,
                                  ),
                                Positioned(
                                  top: -5,
                                  right: -5,
                                  child: Checkbox(
                                      value: item.entries.first.value,
                                      onChanged: ((value) {
                                        setState(() {
                                          // var temp;
                                          // tem temp.entries.first.value = false;
                                          // item = {item.entries.first.key, true};
                                          item.update(item.entries.first.key,
                                              (value) => !value);
                                        });
                                      })),
                                ),
                              ],
                            )),
                        SizedBox(height: size.height * 0.02),
                        GestureDetector(
                          onTap: () async {
                            try {
                              await Clipboard.setData(ClipboardData(
                                  text: item.entries.first.key.path));
                              toast('Copiado', Colors.green);
                            } catch (e) {
                              //error
                            }
                          },
                          child: const OfertasBtn(title: 'Copiar link'),
                        )
                      ],
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.25,
                        height: size.height * 0.25,
                        child: Image.asset('assets/images/ofertas/1.png', fit: BoxFit.cover,),
                      ),
                      SizedBox(height: size.height * 0.01),
                      const OfertasBtn(title: 'Copiar link')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.25,
                        height: size.height * 0.25,
                        child: Image.asset('assets/images/ofertas/2.png', fit: BoxFit.cover,),
                      ),
                      SizedBox(height: size.height * 0.01),
                      const OfertasBtn(title: 'Copiar link')
                    ],
                  )
                ],
              )),
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
