import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/models/pregunta_frecuente.dart';

class ListaPreguntas extends StatefulWidget {
  final List<PreguntaFrecuente> lista;
  const ListaPreguntas({Key? key, required this.lista}) : super(key: key);

  @override
  State<ListaPreguntas> createState() => _ListaPreguntasState();
}

class _ListaPreguntasState extends State<ListaPreguntas> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          widget.lista[panelIndex].isExpanded = !isExpanded;
        });
      },
      children: widget.lista.map<ExpansionPanel>((PreguntaFrecuente item){
        return ExpansionPanel(
          headerBuilder: (context, isExpanded) {
            return ListTile(title: Text(item.titulo, style: const TextStyle(color: Color(0xff00DFEE)),));
          },
          body: ListTile(
            title: Text(item.contenido),
          ),
          isExpanded: item.isExpanded
        );
      }).toList()
    );
  }
}