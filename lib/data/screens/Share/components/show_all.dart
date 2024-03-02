import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/data/screens/Share/all_contacts.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';

class ShowAllContacts extends StatelessWidget {
  const ShowAllContacts({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(
            vertical: size.height * 0.005, 
            horizontal: size.width * 0.04),
        child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: size.height * 0.05,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AllContactsScreen()),
                  );
                },
            child: const CustomFontAileronRegularWhite(text: "Mostrar todo")
          ),
        )
      )
    );
  }
}
