import 'package:flutter/material.dart';

class ListPay extends StatefulWidget {
  const ListPay({super.key});

  @override
  State<ListPay> createState() => _ListPayState();
}

class _ListPayState extends State<ListPay> {
  String dropdownValue = 'Daviplata';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('Medio para recibir pagos')),
        ),
        SizedBox(height: size.height * 0.001),
        //Lista desplegable
        Container(
          width: size.width * 1,
          height: size.height * 0.08,
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
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
            items: <String>['Daviplata', 'Nequi', 'Cta Ahorro', 'Cta Corriente']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
