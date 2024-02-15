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

class LibranzaScreen extends StatefulWidget {
  const LibranzaScreen({super.key});

  @override
  LibranzaScreenState createState() => LibranzaScreenState(); //_LibranzaScreenState por LibranzaScreenState
}

class LibranzaScreenState extends State<LibranzaScreen> {//_LibranzaScreenState por LibranzaScreenState

  String? imagenProducto;

  List<String> aliados = [];
  // List<String> aliados = [
  //   'assets/images/aliados/1.png', bbva
  //   'assets/images/aliados/3.png', banco av villas
  //   'assets/images/aliados/4.png', banco popular
  // ];

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
              idProducto: 1));
      channel.shutdown();
      setState(() {
        imagenProducto = response.imagenProducto;
        aliados = response.aliados;
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
      appBar: const CustomAppbar(title: 'Libranzas', subtitle: 'El producto que más puntos por millón te otorga.',),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Text(
              //     'El producto que más puntos por millón te otorga.',
              //     style: TextStyle(color: Color(0xff003366), fontSize: 12),
              //   ),
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
              AfiliadoDynamic2(aliados: aliados, remote: true),
              // const AfiliadoStatic(),
              SizedBox(height: size.height * 0.01),
              const SectionTitle(title: 'Identificamos la mejor opción para tu referido'),
              SizedBox(height: size.height * 0.01),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CartelProduct(
                    title: 'Libranzas Pensionados',
                    points: '10',
                    bgImage: 'assets/images/refiere_aqui/libranzas/1.png',
                    colorAmarillo: true,
                  ),
                  CartelProduct(
                    title: 'Empleados Públicos',
                    points: '5',
                    bgImage: 'assets/images/refiere_aqui/libranzas/5.png',
                    colorAmarillo: true,
                  ),
                  CartelProduct(
                    title: 'Fuerzas Militares',
                    points: '4',
                    bgImage: 'assets/images/refiere_aqui/libranzas/3.png',
                  ),
                ],
              ),
              // SizedBox(height: size.height * 0.005),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: const [
              //     BtnReferir(),
              //     BtnReferir(),
              //     BtnReferir(),
              //   ],
              // ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CartelProduct(
                    title: 'Policía',
                    points: '4',
                    bgImage: 'assets/images/refiere_aqui/libranzas/4.png',
                    colorAmarillo: true,
                  ),
                  const CartelProduct(
                    colorAmarillo: true,
                    title: 'Docentes',
                    points: '5',
                    bgImage: 'assets/images/refiere_aqui/libranzas/2.png',
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                  )
                ],
              ),
              SizedBox(height: size.height * 0.1),
              // SizedBox(height: size.height * 0.01),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     const BtnReferir(),
              //     const BtnReferir(),
              //     SizedBox(
              //       width: size.width * 0.15,
              //     )
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
