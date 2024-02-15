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

class HipotecarioScreen extends StatefulWidget {
  const HipotecarioScreen({super.key});

  @override
  HipotecarioScreenState createState() => HipotecarioScreenState();
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

class HipotecarioScreenState extends State<HipotecarioScreen> {
  String? imagenProducto;

  List<subProductosResponse> subProductos = [];

  @override
  void initState() {
    getImagenProducto();
    getSubproductos();
    //ignore:todo
    // TODO: implement initState
    super.initState();
  }

  Future<void> getSubproductos() async {
    try {
      List<subProductosResponse> subProds = [];
      var channel = getChannel();
      ServiceClient(channel)
          .getSubproductos(subProductosRequest(
              sessionString: await SessionManager().get('sessionString'),
              idProducto: '2'))
          .listen((value) {
        subProds.add(value);
      }).onDone(() {
        setState(() {
          subProductos = subProds;
        });

        channel.shutdown();
      });
    } on GrpcError catch (e) {
      toast(e.message ?? 'Hubo un error', Colors.red);
    } on Exception {
      toast('Hubo un error', Colors.red);
    }
  }

  Future<void> getImagenProducto() async {
    try {
      var channel = getChannel();
      var response = await ServiceClient(channel).getProductoById(
          productoByIdRequest(
              sessionString: await SessionManager().get('sessionString'),
              idProducto: 2));
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
      appBar: const CustomAppbar(title: 'HIPOTECARIO', subtitle: 'El producto para multiplicar tus puntos.',),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: subProductos.isNotEmpty? [
              // const Center(
              //   child: Text(
              //     ,
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
              AfiliadoDynamic2(aliados: imgAfiliados, remote: true,),
              const SectionTitle(
                  title: 'Identificamos la mejor opción para tu referido'),
              SizedBox(height: size.height * 0.03),
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: WrapCrossAlignment.end,
                alignment: WrapAlignment.spaceAround,
                spacing: 10,
                runSpacing: 16,
                children: [

                  for(var subproducto in subProductos) CartelProduct(
                    title: subproducto.nombreSubpr,
                    points: subproducto.cantidad.toString(),
                    // points: '+10 pts',
                    urlExt: true,
                    bgImage: subproducto.pathImagen,
                    colorAmarillo: subproducto.amarillo==0?true:false,
                    idSubproducto: subproducto.idSubproducto.toString(),
                  ),
                  // CartelProduct(
                  //     title: 'Compra de cartera',
                  //     points: subProductos.where((element) => element.idSubproducto == 2).first.cantidad.toString(),
                  //     bgImage: 'assets/images/refiere_aqui/hipotecario/2.png',
                  //     idSubproducto: '2'),
                  // CartelProduct(
                  //     title: 'Remodelación',
                  //     points: subProductos.where((element) => element.idSubproducto == 3).first.cantidad.toString(),
                  //     bgImage: 'assets/images/refiere_aqui/hipotecario/3.png',
                  //     idSubproducto: '3'),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: const [
              //     BtnReferir(
              //       idSubproducto: '1',
              //     ),
              //     BtnReferir(
              //       idSubproducto: '2',
              //     ),
              //     BtnReferir(
              //       idSubproducto: '3',
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: size.height * 0.03,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     CartelProduct(
              //         title: 'Libre inversión sobre Hip',
              //         points: subProductos.where((element) => element.idSubproducto == 4).first.cantidad.toString(),
              //         bgImage: 'assets/images/refiere_aqui/hipotecario/4.png',
              //         idSubproducto: '4'),
              //     CartelProduct(
              //         title: 'Residentes en el exterior',
              //         points: subProductos.where((element) => element.idSubproducto == 5).first.cantidad.toString(),
              //         bgImage: 'assets/images/refiere_aqui/hipotecario/5.png',
              //         idSubproducto: '5'),
              //     CartelProduct(
              //         title: 'En busca de vivienda',
              //         points: subProductos.where((element) => element.idSubproducto == 6).first.cantidad.toString(),
              //         bgImage: 'assets/images/refiere_aqui/hipotecario/6.png',
              //         idSubproducto: '6'),
              //   ],
              // ),
              // SizedBox(height: size.height * 0.01),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: const [
              //     BtnReferir(
              //       idSubproducto: '4',
              //     ),
              //     BtnReferir(
              //       idSubproducto: '5',
              //     ),
              //     BtnReferir(
              //       idSubproducto: '6',
              //     ),
              //   ],
              // ),
              SizedBox(height: size.height * 0.1),
            ]:[
              const Center(child: CircularProgressIndicator(),)
            ],
          ),
        ),
      ),
    );
  }
}
