import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/otp/components/btn_next.dart';
import 'package:refierelo_marketplace/data/screens/screens_login.dart/login_type_company.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  LoginScreensState createState() => LoginScreensState();
}

class LoginScreensState extends State<LoginScreens> {
  final List<Map<String, String>> carouselData = [
    {
      'imagePath': 'assets/images/images_login/cohete.png',
      'title': 'Hagamos crecer tu negocio',
      'paragraph':
          'Crea tu estrategia de conversión, consolida tu comunidad de referentes y hagamos crecer tu negocio con el voz a voz.',
    },
    {
      'imagePath': 'assets/images/images_login/casa1.png',
      'title': 'Tienda virtual',
      'paragraph':
          'Crea tu tienda virtual, tu comunidad podrá recomendar tus productos y también comprarlos.',
    },
    {
      'imagePath': 'assets/images/images_login/recompensa1.png',
      'title': 'Recompensas',
      'paragraph':
          'Recompensa a tu comunidad para incentivar las recomendaciones de tu negocio, asigna recompensas por producto.',
    },
    {
      'imagePath': 'assets/images/images_login/estrellas01.png',
      'title': 'Mide tu NPS',
      'paragraph':
          'Mide tu NPS (Net Promoter Score) y conoce lo que piensan tus clientes, logramos que tus clientes promotores se conviertan en nuevos referentes embajadores de tu marca.',
    },
  ];

  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration.zero, () {
      _pageController = PageController();
      _pageController.addListener(() {
        setState(() {
          _currentPage = _pageController.page!.round();
        });
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {   
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: carouselData.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildCarouselItem(
                carouselData[index]['imagePath']!,
                carouselData[index]['title']!,
                carouselData[index]['paragraph']!,
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(carouselData.length),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Center(
                child: BtnNext(
                title: "Comenzar",
                press: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                      const LoginTypeCompany()));
                  },
                
              )
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarouselItem(String imagePath, String title, String paragraph) {
    List<String> wrappedText = _wrapText(paragraph);

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 130,
            width: 130,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 0.0),
          Text(
            title,
            style: const TextStyle(
                fontFamily: 'CustomFontAileronBlack',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003366)),
          ),
          const SizedBox(height: 5.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: wrappedText.map((line) {
              return Text(
                line,
                style: const TextStyle(
                  color: Color(0xFF003366),
                  fontFamily: 'CustomFontAileronRegular',
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
  List<String> _wrapText(String text) {
    const int maxCharactersPerLine = 43;
    List<String> lines = [];
    List<String> words = text.split(' ');
    String line = '';

    for (int i = 0; i < words.length; i++) {
      String currentWord = words[i];
      if ((line + currentWord).length > maxCharactersPerLine) {
        lines.add(line.trim());
        line = '';
      }
      line += '$currentWord ';
    }
    if (line.isNotEmpty) {
      lines.add(line.trim());
    }
    return lines;
  }

  List<Widget> _buildPageIndicator(int pageCount) {
    List<Widget> list = [];
    for (int i = 0; i < pageCount; i++) {
      list.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 35),
          child: Container(
            height: 8,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == i ? const Color(0xFF003366) : Colors.grey,
            ),
          ),
        ),
      );
    }
    return list;
  }
}
