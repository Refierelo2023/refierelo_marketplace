import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class SugerenciasDropdown extends StatefulWidget {
  const SugerenciasDropdown({super.key});

  @override
  State<SugerenciasDropdown> createState() => _SugerenciasDropdownState();
}

class _SugerenciasDropdownState extends State<SugerenciasDropdown> {
  String dropdownValue = 'Registro Inicial';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),  
            child: Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(
                    text: 'Dejanos tu ',
                    style: const CustomFontAileronRegularWhite(
                        text: "").getTextStyle(context).copyWith(height: 1.5),
                    children: [
                      TextSpan(
                        text: 'sugerencia',
                        style: const CustomFontAileronRegularTur(
                        text: "").getTextStyle(context).copyWith(height: 1.5),
                      ),
                    ]),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.01),
        //Lista desplegable
        Container(
          width: size.width * 1,
          height: size.height * 0.08,
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue,
              elevation: 16,
              style: const TextStyle(color: Colors.black54),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Registro Inicial', 'App', 'Referir', 'Recompensas', 'Simulador', 'Ofertas', 'Historias', 'Marketplace', 'Nuevo Aliado', 'Nuevo producto para referir', 'Otro']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}