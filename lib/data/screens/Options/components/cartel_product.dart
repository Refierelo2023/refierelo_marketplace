import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/constants.dart';
import 'btn_referir.dart';

class CartelProduct extends StatefulWidget {
  final bool colorAmarillo;
  final String points;
  final String title;
  final String bgImage;
  final String? idSubproducto;
  final bool urlExt;
  const CartelProduct({
    super.key,
    this.colorAmarillo = false,
    required this.points,
    required this.title,
    required this.bgImage,
    this.idSubproducto,
    this.urlExt = false

  });

  @override
  State<CartelProduct> createState() => _CartelProductState();
}

class _CartelProductState extends State<CartelProduct> {
  String puntos = '0';

  @override
  void initState() {
    super.initState();
  
  //ignore:todo
    // TODO: implement initState
    // setSubproducto();
  }

  // Future<void> setSubproducto() async {
  //   if (widget.idSubproducto==null) {
  //     return;
  //   }
  //   try {
  //     var channel = getChannel();
  //     var response = await ServiceClient(channel).getSubproductoById(
  //         subProductoByIdRequest(
  //             sessionString: await SessionManager().get('sessionString'),
  //             idSubproducto: widget.idSubproducto));
  //     channel.shutdown();
  //     setState(() {
  //       puntos = response.cantidad.toString();
  //     });
  //   } on GrpcError catch (e) {
  //     toast(e.message ?? 'Hubo un error', Colors.red);
  //   } on Exception catch (e, s) {
  //     toast('Hubo un error', Colors.red);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          // gradient: LinearGradient(colors: [Color(0xff02B5E7), Color(0xff003366)]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10))),
      height: size.height * 0.177,
      width: size.width * 0.3,
      child: Stack(
        children: [
          (widget.urlExt==false)? Image.asset(
            widget.bgImage,
            // fit: BoxFit.cover,
            width: size.width*0.4,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              if (wasSynchronouslyLoaded) return child;
        return AnimatedOpacity(
                opacity: frame == null ? 0 : 1,
                duration: const Duration(seconds: 3),
                curve: Curves.easeOut,
                child: child,
            );
            },
            errorBuilder: (context, error, stackTrace) {
          // return Image.asset(
          //   "assets/images/error_logo.png",
          //   fit: BoxFit.cover,
          // );
          return Icon(
                              Icons.error,
                              color: Colors.grey,
                              size: size.width * 0.3,
                              // size: sizeConfig.getWidth(20),
                            );
        },
          ):CachedNetworkImage(
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        imageUrl: widget.bgImage,
                        // fit: BoxFit.cover,
                        height: size.height*0.14,
                        width: size.width,
                        // width: sizeConfig.getWidth(20),
                        // height: sizeConfig.getWidth(20),
                        errorWidget: (context, url, error) => Icon(
                              Icons.error,
                              color: Colors.grey,
                              size: size.width * 0.3,
                              // size: sizeConfig.getWidth(20),
                            )),          
          Positioned(
            right: 0,
            top: 30,
            child: Container(
                // height: size.height * 0.02,
                // width: size.width * 0.15,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
                margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
                decoration: BoxDecoration(
                    gradient: widget.colorAmarillo?const LinearGradient(
                        colors: [Color(0xffCE8F21), Color(0xffF8E43E)]):null,
                    color: widget.colorAmarillo?null:Colors.white,
                    borderRadius: BorderRadius.circular(29)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      // widget.points,
                      '+${widget.points} pts',
                      style: const TextStyle(
                        fontSize: 10,
                          color: kSectionTitleColor, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),),

          Align(
            alignment: Alignment.bottomCenter,
            child: BtnReferir(idSubproducto: widget.idSubproducto??'',),)
          // Container(
          //   margin: EdgeInsets.only(bottom: size.height*0.006),
          //   child: Align(
          //     alignment: Alignment.bottomCenter,
          //     child: Text(
          //       title,
          //       style: TextStyle(
          //           color: Colors.white, fontSize: size.height * 0.0125, fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
