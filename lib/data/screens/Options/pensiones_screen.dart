import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/data/screens/Options/components/afiliado_dynamic2.dart';
import 'package:refierelo_marketplace/data/screens/Options/components/cartel_product.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import '../Register/components/components.dart';
import '../home/components/section_title.dart';
import 'components/custom_appbar.dart';

class PensionesScreen extends StatefulWidget {
  const PensionesScreen({super.key});

  @override
  State<PensionesScreen> createState() => _PensionesScreenState();
}

// String? videoId = YoutubePlayer.convertUrlToId("https://youtu.be/4kGRsJ8TEBw");

List<String> imgAfiliados = [];

// List<String> imgAfiliados = [
//   'assets/images/refiere_aqui/pensiones/aliado_1.png',
//   'assets/images/refiere_aqui/pensiones/aliado_2.png'
// ];

class _PensionesScreenState extends State<PensionesScreen> {


  String? imagenProducto;

@override
    void initState() {
      super.initState();
      getImagenProducto();
    }

    Future<void> getImagenProducto() async {
    try {
      var channel = getChannel();
      var response = await ServiceClient(channel).getProductoById(
          productoByIdRequest(
              sessionString: await SessionManager().get('sessionString'),
              idProducto: 6));
      channel.shutdown();
      setState(() {
        imagenProducto = response.imagenProducto;
        imgAfiliados = response.aliados;
      });
    } on GrpcError catch (e) {
      toast(e.message ?? 'Hubo un error', Colors.red);
    } on Exception {
      toast('Hubo un error', Colors.red);
    }
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const CustomAppbar(title: 'TRASLADO DE PENSIONES'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  'El producto para multiplicar tus puntos.',
                  style: TextStyle(color: Color(0xff003366), fontSize: 12),
                ),
              ),
              if (imagenProducto != null)
                Container(
                  margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: CachedNetworkImage(
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        imageUrl: imagenProducto??'',
                        // width: sizeConfig.getWidth(20),
                        // height: sizeConfig.getWidth(20),
                        errorWidget: (context, url, error) => const Icon(
                              Icons.error,
                              color: Colors.grey,
                              // size: sizeConfig.getWidth(20),
                            )),
                  // child: Image.network(imagenProducto!),
                  // child: Image.asset('assets/images/carrusel_1/5.png'),
                ),
              const SectionTitle(title: 'Tu referido podrá comparar'),
              AfiliadoDynamic2(
                aliados: imgAfiliados,
                remote: true,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const SectionTitle(title: 'Puntos adicionales por cada producto'),
              SizedBox(
                height: size.height * 0.01,
              ),
              // ignore: prefer_const_constructors
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CartelProduct(
                    title: '18-25 años',
                    points: '10',
                    bgImage: 'assets/images/refiere_aqui/pensiones/3.png',
                    colorAmarillo: true,
                  ),
                  CartelProduct(
                    title: '26-30 años',
                    points: '7',
                    bgImage: 'assets/images/refiere_aqui/pensiones/2.png',
                  ),
                  CartelProduct(
                    title: 'Primer empleo',
                    points: '4',
                    bgImage: 'assets/images/refiere_aqui/pensiones/1.png',
                  ),
                ],
              ),
              // SizedBox(height: size.height * 0.01),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: const [
              //     BtnReferir(),
              //     BtnReferir(),
              //     BtnReferir(),
              //   ],
              // ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const SectionTitle(
                title: 'Descubre como puedes conseguir más referidos',
              ),
              // YoutubeComponent(
              //   videoId: videoId!,
              // ),
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
