import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/data/screens/Options/components/afiliado_dynamic2.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import '../Register/components/components.dart';
import '../home/components/section_title.dart';
import 'components/cartel_product.dart';
import 'components/custom_appbar.dart';

class InversionScreen extends StatefulWidget {
  const InversionScreen({super.key});

  @override
  State<InversionScreen> createState() => _InversionScreenState();
}

// String? videoId = YoutubePlayer.convertUrlToId("https://youtu.be/Mo7NNTArurk"); // BBAyRBTfsOU

List<String> imgAfiliados = [];
// List<String> imgAfiliados = [
//   'assets/images/refiere_aqui/inversion/aliado_1.png',
// ];

class _InversionScreenState extends State<InversionScreen> {

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
              idProducto: 3));
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
      appBar: const CustomAppbar(title: 'INVERSIÓN', subtitle: 'Acelera tus puntos',),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Center(
              //   child: Text(
              //     'Acelera tus puntos',
              //     style: TextStyle(color: Color(0xff003366), fontSize: 12),
              //   ),
              // ),
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
              SizedBox(height: size.height*0.005,),
              AfiliadoDynamic2(
                aliados: imgAfiliados,
                remote: true,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const SectionTitle(title: 'Gana puntos por monto referido'),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CartelProduct(
                    colorAmarillo: true,
                    title: 'INVERSIÓN 5-50 M',
                    points: '20',
                    bgImage: 'assets/images/refiere_aqui/inversion/1.png',
                  ),
                  CartelProduct(
                    colorAmarillo: true,
                    title: 'INVERSIÓN 50-100 M',
                    points: '20',
                    bgImage: 'assets/images/refiere_aqui/inversion/2.png',
                  ),
                  CartelProduct(
                    colorAmarillo: true,
                    title: 'INVERSIÓN MÁS DE 100 M',
                    points: '60',
                    bgImage: 'assets/images/refiere_aqui/inversion/3.png',
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
                title: '¿Por qué referir a un Fondo Pensional?',
              ),
              // YoutubeComponent(videoId: videoId!),
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
