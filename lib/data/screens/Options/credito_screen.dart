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

class CreditoScreen extends StatefulWidget {
  const CreditoScreen({super.key});

  @override
  State<CreditoScreen> createState() => _CreditoScreenState();
}

List<String> imgAfiliados = [ ];
// List<String> imgAfiliados = [
//   // bbva
//   'assets/images/aliados/1.png',
//   //colpatria
//   'assets/images/aliados/8.png',
//   // banco av villas
//   'assets/images/aliados/3.png',
//   // banco popular
//   'assets/images/aliados/4.png',
// ];

class _CreditoScreenState extends State<CreditoScreen> {

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
              idProducto: 4));
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
      appBar: const CustomAppbar(title: 'OTROS CRÉDITOS', subtitle: 'El producto para multiplicar tus puntos.',),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Center(
              //   child: Text(
              //     'El producto para multiplicar tus puntos.',
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
              const SectionTitle(title: 'Identificamos la mejor opción para tu referido'),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CartelProduct(
                    title: 'Libre Inversión',
                    points: '10',
                    bgImage: 'assets/images/refiere_aqui/creditos/1.png',
                    colorAmarillo: true,
                  ),
                  CartelProduct(
                    title: 'Compra de cartera',
                    points: '7',
                    bgImage: 'assets/images/refiere_aqui/creditos/2.png',
                  ),
                  CartelProduct(
                    title: 'Vehículo',
                    points: '4',
                    bgImage: 'assets/images/refiere_aqui/creditos/3.png',
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
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CartelProduct(
                    title: 'Libre Inversión',
                    points: '3',
                    bgImage: 'assets/images/refiere_aqui/creditos/4.png',
                  ),
                  SizedBox(width: size.width * 0.62)
                ],
              ),
              SizedBox(height: size.height * 0.1),
              // SizedBox(height: size.height * 0.01),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     const BtnReferir(),
              //     SizedBox(width: size.width * 0.5)
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
