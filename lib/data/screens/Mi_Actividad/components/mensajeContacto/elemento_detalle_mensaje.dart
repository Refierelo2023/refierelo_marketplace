
import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/models/enums.dart';
import '../../../helpers/helpers.dart';

class ElementoDetalleMensaje extends StatefulWidget {
  final mensajeContacto item;
  const ElementoDetalleMensaje({super.key, required this.item});

  @override
  State<ElementoDetalleMensaje> createState() => _ElementoDetalleMensajeState();
}

class _ElementoDetalleMensajeState extends State<ElementoDetalleMensaje> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      width: size.width,
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.06, vertical: size.height * 0.005),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.23),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton
                    (
                        onPressed: () {
                          setState(() {
                            _showContent = !_showContent;
                          });
                        },
                        icon: const Icon(Icons.expand_more,
                            color: Colors.white, size: 20)
                    ),
                    Image.asset('assets/images/mi_actividad/2.png', height: size.height * 0.03),
                    SizedBox(width: size.width * 0.01,),
                    Text(widget.item.nombreContacto, style: const TextStyle(color: Colors.white),)
                ],
              ),
              Text(EstadoMensajeContacto.values[widget.item.estado]==EstadoMensajeContacto.formalizado?'+${widget.item.puntosGanados}':EstadoMensajeContacto.values[widget.item.estado].value, style: const TextStyle(color: Color(0xff00DFEE), fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          _showContent
              ? Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.02),
                  child: Column(children: 
                  [
                    Row(
                      children: [
                        Text('Fecha registro: ${(getDateFromUnit(widget.item.fechaHoraRegistro) ?? '')}', style: const TextStyle(color: Colors.white))
                      ],),
                    Row(
                      children: [
                        Text('Celular: ${widget.item.numeroTelefono}', style: const TextStyle(color: Colors.white))
                      ],),
                    Row(
                      children: [
                        Text('Estado: ${EstadoMensajeContacto.values[widget.item.estado]==EstadoMensajeContacto.formalizado?'+${widget.item.puntosGanados}':EstadoMensajeContacto.values[widget.item.estado].value}', style: const TextStyle(color: Colors.white))
                      ],),
                  ],),
                )
              : Container()
        ],
      ),
    );
  }
}