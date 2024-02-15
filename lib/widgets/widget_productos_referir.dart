import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/widgets_botton_referir.dart';

class BottomClipper extends CustomClipper<Rect> {
  // recorta la forma del contenedor
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, size.width, size.height - 20);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

class WidgetProductosReferir extends StatelessWidget {
  const WidgetProductosReferir({super.key});

  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 5, // espacio entre columnas
        mainAxisSpacing: 20, // espacio entre filas
        childAspectRatio: 0.68, // controla largo contenedores
        children: [
          _buildProductWidget(
            imagePath: "assets/images/images_productos/black.png",
            discount: " -5 % OFF",
            productName: "Tarjeta black",
            redeemPoints: "300 Puntos",
            screenWidth: MediaQuery.of(context).size.width,
          ),
          _buildProductWidget(
            imagePath: "assets/images/images_productos/platino.png",
            discount: "-10% OFF",
            productName: "Tarjeta Platino",
            redeemPoints: "100 Puntos",
            screenWidth: MediaQuery.of(context).size.width,
            
          ),
          _buildProductWidget(
            imagePath: "assets/images/images_productos/cineconbito.png",
            discount: "-3 OFF",
            productName: "Cine Combito",
            redeemPoints: "100 Puntos",
            screenWidth: MediaQuery.of(context).size.width,
          ),
          _buildProductWidget(
            imagePath: "assets/images/images_productos/black.png",
            discount: "-5 OFF",
            productName: "Producto Cuatro",
            redeemPoints: "100 Puntos",
            screenWidth: MediaQuery.of(context).size.width,
          ),
          _buildProductWidget(
            imagePath: "assets/images/images_productos/black.png",
            discount: "-4% OFF",
            productName: "Producto Cinco",
            redeemPoints: "100 Puntos",
            screenWidth: MediaQuery.of(context).size.width,
          ),
          _buildProductWidget(
            imagePath: "assets/images/images_productos/black.png",
            discount: "- 5 OFF",
            productName: "Producto Cinco",
            redeemPoints: "100 Puntos",
            screenWidth: MediaQuery.of(context).size.width,
          ),
          _buildProductWidget(
            imagePath: "assets/images/images_productos/black.png",
            discount: "Obsequio",
            productName: "Producto Cinco",
            redeemPoints: "100 Puntos",
            screenWidth: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
  Widget _buildProductWidget({
    required String imagePath,
    required String discount,
    required String productName,
    required String redeemPoints,
    required double screenWidth,    
       
  }) {
      return Stack(
        children: [
          Positioned.fill(
          child: Container(
            margin: EdgeInsets.symmetric(vertical:screenWidth * 0.030,horizontal: screenWidth * 0.05),
            // decoration: const BoxDecoration(color: Colors.black),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Center(
                    child: Container(
                        decoration: const BoxDecoration(
                        color: Color(0xFFF5F7F9),
                      ),
                    ),
                  ),
                ),
                FractionallySizedBox(
                  //IMAGEN PRODUCTOS
                  heightFactor: 0.52, // % Imagen espacio dentro del contenedor
                  alignment: Alignment.topCenter,
                  child: ClipRect(
                    clipper: BottomClipper(),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                /////////////////////////////////////////////////////////////////////////// Precio del artículo
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: screenWidth * 0.035),
                    child: FractionallySizedBox(
                      widthFactor: 1.0, // ajusta el ancho del item
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF003366),
                              Color(0xFF02b5e7),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Text(
                            discount,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Aileron",
                              fontSize: screenWidth * 0.037,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: FractionallySizedBox(
                    widthFactor: 1.0, // ajusta el ancho del item
                    child: Padding(
                      padding: EdgeInsets.only(top: screenWidth * 0.1, left: screenWidth * 0.018),
                      child: Text(
                        productName,
                        textAlign: TextAlign.left,
                        style:  TextStyle(
                          fontFamily: "Aileron",
                          fontSize: screenWidth *0.034,
                          color: const Color(0xFF003366),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: FractionallySizedBox(
                    widthFactor: 1.0, // ajusta el ancho del item
                    child: Padding(
                      padding: EdgeInsets.only(top: screenWidth * 0.25, left: screenWidth * 0.018),
                      child: Text(
                        "Gánate: ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "Aileron",
                          fontSize: screenWidth * 0.034,
                          color: const Color(0xFFA6A6A6),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: FractionallySizedBox(
                    widthFactor: 1.0, // ajusta el ancho del item
                    child: Padding(
                      padding: EdgeInsets.only(top: screenWidth * 0.35, left: screenWidth * 0.018),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(children: [
                          const Icon(
                            Icons.copyright_outlined,
                            color: Color(0xFFce8f21),
                          ),
                          const SizedBox(
                            width: 7,
                          ), // espacio entre el icono y el texto
                          Text(
                            redeemPoints,
                            style:  TextStyle(
                              color: const Color(0xFF003366),
                              fontFamily: "Aileron",
                              fontWeight: FontWeight.w700,
                              fontSize: screenWidth * 0.033,
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      padding: EdgeInsets.only(top: screenWidth * 0.50, left: screenWidth * 0.018),
                      child: const WidgetBottonReferir()),
                ),
              ],
            ),
          ),
              ),
        ],
      );
  }
}

