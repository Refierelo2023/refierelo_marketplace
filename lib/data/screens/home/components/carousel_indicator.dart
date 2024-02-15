import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import '../../Options/credito_screen.dart';
import '../../Options/hipotecario_screen.dart';
import '../../Options/inversion_screen.dart';
import '../../Options/libranza_screen.dart';
import '../../Options/pensiones_screen.dart';
import '../../Options/seguros_screen.dart';

class CarouselIndicator extends StatefulWidget {
  final List<producto>? imgCarousels;

  const CarouselIndicator({super.key, this.imgCarousels});

  @override
  CarouselState createState() => CarouselState();
}

class CarouselState extends State<CarouselIndicator> {
  late CarouselSliderController _carouselSliderController;

  @override
  void initState() {
    super.initState();
    _carouselSliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: size.height * 0.28,
        width: double.infinity,
        child: CarouselSlider.builder(
          unlimitedMode: true,
          controller: _carouselSliderController,
          slideBuilder: (index) {
            return 
            // Image(
            //   image: AssetImage(widget.imgCarousels![index].imagenProducto),
            //   fit: BoxFit.fill,
            //   width: double.infinity,
            // )
            GestureDetector(child: CachedNetworkImage(
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        imageUrl: widget.imgCarousels![index].imagenProducto,
                        // width: sizeConfig.getWidth(20),
                        // height: sizeConfig.getWidth(20),
                        fit: BoxFit.fill,
                        width: double.infinity,
                        errorWidget: (context, url, error) => const Icon(
                              Icons.error,
                              color: Colors.grey,
                              // size: sizeConfig.getWidth(20),
                              size: double.infinity,
                            )), onTap: () {
                              redirectProductoScreen(widget.imgCarousels![index].idProducto);
                            },);
          },
          itemCount: widget.imgCarousels!.length,
          enableAutoSlider: true,
          autoSliderDelay: const Duration(seconds: 15),
          slideIndicator: CircularSlideIndicator (
            currentIndicatorColor: const Color(0xff003366),
            indicatorBackgroundColor: Colors.white
          ),
          slideTransform: const ZoomOutSlideTransform(),
        )
      ),
    );
  }

  void redirectProductoScreen(int idProducto){
    switch (idProducto) {
      case 1:
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LibranzaScreen()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HipotecarioScreen()));
        break;
      case 3:
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InversionScreen()));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreditoScreen()));
        break;
      case 5:
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SegurosScreen()));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PensionesScreen()));
        break;
    }
  }
}