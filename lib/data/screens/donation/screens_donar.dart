import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/screen_reward_user/btn_recompesas.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class ScreensDonar extends StatefulWidget {
  const ScreensDonar({super.key});

  @override
  _ScreensDonarState createState() => _ScreensDonarState();
}

class _ScreensDonarState extends State<ScreensDonar> {
  double _sliderValue = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: CustomFontAileronBold2(
                    text: '1.000',
                    fontSize: 0.060,
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: CustomFontAileronRegular2(text: 'Nuevos Frailejones'),
                ),
                const SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        "En Colombia Los frailejones abastecen hasta el 70% del agua de la población ",
                    style: const CustomFontAileronRegular(
                      text: " ",
                    ).getTextStyle(context),
                    children: [
                      TextSpan(
                        text: "y debido a los incendios forestales y cambios climáticos, ",
                        style: const CustomFontAileronRegular(
                          text: "",
                        ).getTextStyle(context).copyWith(height: 1.5),
                      ),
                      TextSpan(
                        text: "se afectaron más de 100 hectáreas. ",
                        style: const CustomFontAileronSemiBold(
                          text: " ",
                        ).getTextStyle(context).copyWith(height: 1.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "¡ Tu puedes hacer el cambio ! ",
                      style: const CustomFontAileronSemiBold(
                        text: " ",
                        fontSize: 0.048,
                      ).getTextStyle(context),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        "Estamos buscando héroes como tú, para sembrar 1.000 Frailejones, ",
                    style: const CustomFontAileronRegular(
                      text: " ",
                    ).getTextStyle(context),
                    children: [
                      TextSpan(
                        text: "por cada 1000 puntos que dones,  ",
                        style: const CustomFontAileronRegularTur(
                          text: "",
                        ).getTextStyle(context).copyWith(height: 1.5),
                      ),
                      TextSpan(
                        text: "podremos sembrar un frailejon. ",
                        style: const CustomFontAileronRegular(
                          text: " ",
                        ).getTextStyle(context).copyWith(height: 1.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.center,
                  child: CustomFontAileronSemiBold(
                    text: '¿Cuántos puntos quieres donar?',
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Container(                    
                    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFf4f4f4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Total: ${_sliderValue.toStringAsFixed(0)}', // resultado control deslizante
                      style: const CustomFontAileronRegular(text: " ",).getTextStyle(context)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Slider(
                    value: _sliderValue,
                    min: 1,
                    max: 1000,
                    divisions: 1000,
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                    label: _sliderValue.toStringAsFixed(0),
                    activeColor: const Color(0xFF003366),                    
                    inactiveColor: Colors.grey,
                  ),
                ),                
                const SizedBox(height: 5),
                Center(child: BtnRecompensas(callback: (){}, titulo: "Donar"))
              ],
            ),
          ),
        ),
    );
  }
}
