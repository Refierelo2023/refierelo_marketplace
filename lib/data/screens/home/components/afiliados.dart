import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:refierelo_marketplace/data/screens/home/components/aliado.dart';
import 'package:refierelo_marketplace/models/aliado_model.dart';


class Afiliados extends StatefulWidget {
  final List<Aliado>? imgAfiliados;

  const Afiliados({super.key, this.imgAfiliados});

  @override
  AfiliadosState createState() => AfiliadosState();
}

class AfiliadosState extends State<Afiliados> {
  late CarouselSliderController _sliderController;

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff048EC2),
        Color(0xff265E98),
        Color(0xff265C98)
      ])),
      child: SizedBox(
        height: size.height * 0.1,
        child: Stack(
          children: [
            CarouselSlider.builder(
                unlimitedMode: true,
                controller: _sliderController,
                slideBuilder: (index) {
                  index = 0;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AliadoComponenet(img: widget.imgAfiliados![index].imagenAliado, title: widget.imgAfiliados![index].nombreAliado),
                      AliadoComponenet(img: widget.imgAfiliados![index + 1].imagenAliado, title: widget.imgAfiliados![index + 1].nombreAliado),
                      AliadoComponenet(img: widget.imgAfiliados![index + 2].imagenAliado, title: widget.imgAfiliados![index + 2].nombreAliado),
                      AliadoComponenet(img: widget.imgAfiliados![index + 3].imagenAliado, title: widget.imgAfiliados![index + 3].nombreAliado), 
                      AliadoComponenet(img: widget.imgAfiliados![index + 4].imagenAliado, title: widget.imgAfiliados![index + 4].nombreAliado), 
                      AliadoComponenet(img: widget.imgAfiliados![index + 5].imagenAliado, title: widget.imgAfiliados![index + 5].nombreAliado), 
                    ],
                  );
                },
                slideTransform: const DefaultTransform(),
                itemCount: widget.imgAfiliados!.length,
                initialPage: 0,
                enableAutoSlider: false,
                autoSliderDelay: const Duration(seconds: 15)),
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () {
                  _sliderController.nextPage();
                },
                icon: const Icon(Icons.arrow_forward_ios_outlined),
                color: const Color(0xffC0C0C0),
                iconSize: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}
