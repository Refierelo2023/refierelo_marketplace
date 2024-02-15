import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

  class backgroundImageWidget extends StatelessWidget{

    final Widget child;
    final String image;
    // final ImageProvider image;

    const backgroundImageWidget({
      super.key,
      required this.image,
      required this.child,
    });

    @override
    Widget build(BuildContext context) => Stack(
      children: [
        buildBackground(),
        child,
      ],

    );

    Widget buildBackground() => ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
          colors: [Color.fromARGB(255, 139, 209, 241), Color.fromARGB(255, 53, 183, 243)],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: CachedNetworkImage(
  imageUrl: image,
  imageBuilder: (context, imageProvider) => Container(
    decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.blue.withOpacity(0.2),
            BlendMode.darken,
          ),
        ),
        ),
  ),
  placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
  errorWidget: (context, url, error) => const Center(child: Icon(Icons.error),),
),
      // Container(
      //   decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: image,
      //     fit: BoxFit.cover,
      //     colorFilter: ColorFilter.mode(
      //       Colors.blue.withOpacity(0.2),
      //       BlendMode.darken,
      //     ),
      //   ),
      //   ),
      // )
      
    );
    
  }