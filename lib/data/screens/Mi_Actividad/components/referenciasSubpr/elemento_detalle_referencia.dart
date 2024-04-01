import 'package:flutter/material.dart';

import 'package:refierelo_marketplace/models/enums.dart';
import '../../../helpers/helpers.dart';

class ElementoDetalleReferencia extends StatefulWidget {
  final  item;
  const ElementoDetalleReferencia({super.key, required this.item});

  @override
  State<ElementoDetalleReferencia> createState() => _ElementoDetalleReferenciaState();
}

class _ElementoDetalleReferenciaState extends State<ElementoDetalleReferencia> {
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
                    Text(widget.item.nombreApellido, style: const TextStyle(color: Colors.white),)
                ],
              ),
              Text(
                EstadoReferenciaSubpr.values[widget.item.estadoReferencia]==EstadoReferenciaSubpr.cierre?'+${widget.item.puntosGanados}':EstadoReferenciaSubpr.values[widget.item.estadoReferencia].value, style: const TextStyle(color: Color(0xff00DFEE), fontSize: 16, fontWeight: FontWeight.bold)),
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
                        Text('Fecha registro: ${getDateFromUnit(widget.item.fechaHoraRegistro)??''}', style: const TextStyle(color: Colors.white))
                      ],),
                    Row(
                      children: [
                        Text('Celular: ${widget.item.numeroTelefono}', style: const TextStyle(color: Colors.white))
                      ],),
                    Row(
                      children: [
                        Text('Estado: ${EstadoReferenciaSubpr.values[widget.item.estadoReferencia].value}', style: const TextStyle(color: Colors.white))
                      ],),
                    Row(
                      children: [
                        Expanded(child: Text('Producto/Sub: ${widget.item.nombreProducto} ${widget.item.nombreSubpr}', overflow: TextOverflow.fade, style: const TextStyle(color: Colors.white)))
                      ],),
                    Row(
                      children: [
                        Text('Monto: ${widget.item.monto}', style: const TextStyle(color: Colors.white))
                      ],),
                    Row(
                      children: [
                        Expanded(child: Text('Entidad receptora Referido: ${widget.item.nombreEntidad}', overflow: TextOverflow.fade,style: const TextStyle(color: Colors.white)))
                      ],),
                    Row(
                      children: [
                        Expanded(child: Text('Fecha estimada cierre: ${getDateFromUnit(widget.item.fechaCierre)??''}', overflow: TextOverflow.fade, style: const TextStyle(color: Colors.white)))
                      ],),
                    Row(
                      children: [
                        Expanded(child: Text('Observaciones: ${widget.item.observaciones}', overflow: TextOverflow.fade, style: const TextStyle(color: Colors.white)))
                      ],),
                    Row(
                      children: [
                        Text('Estado: ${EstadoReferenciaSubpr.values[widget.item.estadoReferencia].value}', style: const TextStyle(color: Colors.white))
                      ],),
                    Row(
                      children: [
                        Text('Posibles puntos: ${widget.item.puntosGanados}', style: const TextStyle(color: Colors.white))
                      ],),
                  ],),
                )
              : Container()
        ],
      ),
    );
  }
}