import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class WidgetCarruselNps extends StatefulWidget {
  final double? height;

  const WidgetCarruselNps({super.key, this.height});

  @override
  WidgetCarruselNpsState createState() => WidgetCarruselNpsState();
}

class WidgetCarruselNpsState extends State<WidgetCarruselNps> {
  final List<Map<String, String>> carouselData = [
    {
      'imagePath': 'assets/images/nps/NPS1.png',
      'title': 'Promotores',
      'paragraph':
          'Clientes altamente satisfechos y leales que tienen una mayor probabilidad de difundir y recomendar tu marca.',
    },
    {
      'imagePath': 'assets/images/nps/NPS2.png',
      'title': 'Neutros',
      'paragraph':
          'Clientes satisfechos, pero no lo suficiente, es crucial entender sus expectativas y mejorarlas para convertir a este grupo en Promotores',
    },
    {
      'imagePath': 'assets/images/nps/NPS3.png',
      'title': 'Detractores',
      'paragraph':
          'Expresan insatisfacción total y son propensos a recomendar negativamente tu marca, sus comentarios son muy váliosos para identificar aspectos a mejorar',
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
   
    return SizedBox(      
      height: widget.height ?? MediaQuery.of(context).size.height * 0.30,
      child: Scaffold(
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
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                alignment: Alignment.topCenter,
                child: const CustomFontAileronBold(
                  text: "Así categorizamos tus clientes",
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Color(0xFFD3D3D3),),
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
                    icon: const Icon(Icons.arrow_forward_ios_rounded, 
                    color: Color(0xFFD3D3D3),),
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
    );
  }

  Widget _buildCarouselItem(String imagePath, String title, String paragraph) {
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
          const SizedBox(height: 40),
          Image.asset(
            imagePath,
            height: screenHeight * 0.090,
            width: screenHeight * 0.090,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 10),
          CustomFontAileronBold(
            text: title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: wrappedText.map((line) {
              return CustomFontAileronRegular(
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
