import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class WidgetCarrusel2 extends StatefulWidget {
  final double? height;

  const WidgetCarrusel2({super.key, this.height});

  @override
  WidgetCarrusel2State createState() => WidgetCarrusel2State();
}

class WidgetCarrusel2State extends State<WidgetCarrusel2> {
  final List<Map<String, String>> carouselData = [
    {
      'imagePath': 'assets/images/nps/example1.png',
      'paragraph':
          'Al cierre de mes registraste en total 100 clientes y todos respondieron tu encuesta',
    },
    {
      'imagePath': 'assets/images/nps/example22.png',
      'paragraph':
          'Clasificamos y obtenemos el total de respuestas de cada grupo y su porcentaje  ',
    },
    {
      'imagePath': 'assets/images/nps/example3.png',
      'paragraph':
          ' Restamos el porcentaje total de los grupos Detractores y Promotores ',
    },
    {
      'imagePath': 'assets/images/nps/example4.png',
      'paragraph': 'Felicidades, Tienes un Nps de 45',
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: widget.height ?? MediaQuery.of(context).size.height * 0.33,
          child: Stack(
            children: [
              PageView.builder(
                controller: _pageController,
                itemCount: carouselData.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildCarouselItem(
                    carouselData[index]['imagePath']!,
                    carouselData[index]['paragraph']!,
                  );
                },
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: const CustomFontAileronBold(
                    text: "Así medimos tu Nps",
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0XFFD3D3D3),
                      ),
                      onPressed: () {
                        if (_currentPage > 0) {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0XFFD3D3D3),
                      ),
                      onPressed: () {
                        if (_currentPage < carouselData.length - 1) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCarouselItem(String imagePath, String paragraph) {
    double screenHeight = MediaQuery.of(context).size.height;
    List<String> wrappedText = _wrapText(paragraph);

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFffffff),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 25),
          Image.asset(
            imagePath,
            height: screenHeight * 0.19,
            width: screenHeight * 0.35,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: wrappedText.map((line) {
              return CustomFontAileronRegularBlack(
                text: line,
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
}
