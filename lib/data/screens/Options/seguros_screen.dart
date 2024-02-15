import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/data/screens/Options/components/afiliado_dynamic2.dart';
import 'package:refierelo_marketplace/data/screens/Options/components/custom_appbar.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/data/screens/home/components/section_title.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';

import '../Register/components/components.dart';

import 'components/cartel_product.dart';

class SegurosScreen extends StatefulWidget {
  const SegurosScreen({super.key});

  @override
  SeguroScreenState createState() => SeguroScreenState();
}

List<String> imgAfiliados = [ ];
// List<String> imgAfiliados = [
//   'assets/images/refiere_aqui/seguros/aliado_1.png',
//   'assets/images/refiere_aqui/seguros/aliado_2.png',
//   'assets/images/refiere_aqui/seguros/aliado_4.png',
//   'assets/images/refiere_aqui/seguros/aliado_3.png',
// ];

class SeguroScreenState extends State<SegurosScreen> {

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
              idProducto: 5));
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
      appBar: const CustomAppbar(title: 'SEGUROS', subtitle: 'El producto para multiplicar tus puntos',),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Center(
              //   child: Text(
              //     'El producto para multiplicar tus puntos',
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
              const SectionTitle(title: 'Puntos adicionales por cada producto'),
              SizedBox(
                height: size.height * 0.03,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CartelProduct(
                    title: 'Seguro de vivienda',
                    points: '10',
                    bgImage: 'assets/images/refiere_aqui/seguros/1.png',
                    colorAmarillo: true,
                  ),
                  CartelProduct(
                    title: 'Seguro de vida',
                    points: '7',
                    bgImage: 'assets/images/refiere_aqui/seguros/2.png',
                  ),
                  CartelProduct(
                    title: 'Seguro de Médico',
                    points: '4',
                    bgImage: 'assets/images/refiere_aqui/seguros/3.png',
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   CartelProduct(
                    title: 'Seguro de Mascotas',
                    points: '3',
                    bgImage: 'assets/images/refiere_aqui/seguros/4.png',
                  ),
                  CartelProduct(
                    title: 'Soat',
                    points: '2',
                    bgImage: 'assets/images/refiere_aqui/seguros/5.png',
                  ),
                  CartelProduct(
                    colorAmarillo: true,
                    title: 'Soat',
                    points: '10',
                    bgImage: 'assets/images/refiere_aqui/seguros/6.png',
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.1),
              // SizedBox(height: size.height * 0.01),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: const [
              //     BtnReferir(),
              //     BtnReferir(),
              //     BtnReferir(),
              //   ],
              // ),
              // SizedBox(
              //   height: size.height * 0.01,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
