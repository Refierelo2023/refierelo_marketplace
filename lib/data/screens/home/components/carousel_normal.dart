import 'package:flutter/material.dart';

// class CarouselNormal extends StatefulWidget {
//   final List<String>? imgCarousels;

//   const CarouselNormal({Key? key, this.imgCarousels}) : super(key: key);

//   @override
//   _CarouselState createState() => _CarouselState();
// }

// class _CarouselState extends State<CarouselNormal> {
//   late CarouselSliderController _carouselSliderController;

//   @override
//   void initState() {
//     super.initState();
//     _carouselSliderController = CarouselSliderController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Container(
//         height: size.height * 0.2,
//         width: double.infinity,
//         child: CarouselSlider.builder(
//           unlimitedMode: true,
//           controller: _carouselSliderController,
//           slideBuilder: (index) {
//             return Image(
//               image: AssetImage(widget.imgCarousels![index]),
//               fit: BoxFit.fill,
//               width: double.infinity,
//             );
//           },
//           itemCount: widget.imgCarousels!.length,
//           enableAutoSlider: true,
//           autoSliderDelay: const Duration(seconds: 15)
//         )
//       ),
//     );
//   }
// }



class BannerComponent extends StatefulWidget {

  final List<String> paths;
  const BannerComponent({super.key, required this.paths});

  @override
  State<BannerComponent> createState() => _BannerComponentState();
}

class _BannerComponentState extends State<BannerComponent> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.14,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11.5),
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [
      //       Color(0xff048EC2),
      //       Color(0xff265E98),
      //       Color(0xff265C98)
      //     ]
      //   )
      // ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
        RawScrollbar(
                    controller: scrollController,
                    thumbColor: Colors.transparent,
                    radius: const Radius.circular(20),
                    thumbVisibility: false,
                    child: ListView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        children: [
          for(String aliado in widget.paths) Padding(padding: const EdgeInsets.symmetric(horizontal: 3), child: Image.asset(
                  aliado,
                  // width: size.width*0.25,
                  // height: 80,
                ),)
        ])),
        // Positioned(
        //       right: -14,
        //       child: IconButton(
        //         onPressed: () {
        //           scrollController.jumpTo(scrollController.position.pixels+22);
        //         },
        //         icon: const Icon(Icons.arrow_forward_ios_outlined),
        //         color: const Color(0xffC0C0C0),
        //         iconSize: 30,
        //       ),
        //     )
      ]),
    );
  }
}