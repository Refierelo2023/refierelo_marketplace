import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/models/enums.dart';
import '../../../helpers/helpers.dart';

class ElementoDetalleReferenciaEmpr extends StatefulWidget {
  final item;
  const ElementoDetalleReferenciaEmpr({super.key, required this.item});

  @override
  State<ElementoDetalleReferenciaEmpr> createState() => _ElementoDetalleReferenciaEmprState();
}

class _ElementoDetalleReferenciaEmprState extends State<ElementoDetalleReferenciaEmpr> {
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
                    Text(widget.item.nombreEmpresa, style: const TextStyle(color: Colors.white),)
                ],
              ),
              Text(
                EstadoReferenciaEmpr.values[widget.item.estadoRefEmpresa]==EstadoReferenciaEmpr.cierre?'+${widget.item.puntosGanados}':EstadoReferenciaEmpr.values[widget.item.estadoRefEmpresa].value, style: const TextStyle(color: Color(0xff00DFEE), fontSize: 16, fontWeight: FontWeight.bold)),
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
                        Text('Fecha y hora registro: ${getDate(widget.item.fechaHoraRegistro)}', style: const TextStyle(color: Colors.white),)
                      ],),
                    Row(
                      children: [
                        Expanded(child: Text('Nombre empresa/emprendimiento: ${widget.item.nombreEmpresa}', style: const TextStyle(color: Colors.white)))
                      ],),
                    // Row(
                    //   children: [
                    //     Text('Estado: ${EstadoReferenciaEmpr.values[widget.item.estadoRefEmpresa].value}')
                    //   ],),
                    const Row(
                      children: [
                        Expanded(child: Text('Producto/Sub: --', overflow: TextOverflow.fade, style: TextStyle(color: Colors.white)))
                      ],),
                    // Row(
                    //   children: [
                    //     Expanded(child: Text('Fecha estimada cierre: ${widget.item.fechaCierre}', overflow: TextOverflow.fade,))
                    //   ],),
                    // Row(
                    //   children: [
                    //     Expanded(child: Text('Observaciones: ${widget.item.observaciones}', overflow: TextOverflow.fade,))
                    //   ],),
                    Row(
                      children: [
                        Text('Estado: ${EstadoReferenciaEmpr.values[widget.item.estadoRefEmpresa].value}', style: const TextStyle(color: Colors.white))
                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Recompensa: ${widget.item.puntosGanados} puntos', style: const TextStyle(color: Color(0xff00DFEE), ))
                      ]),
                  ],),
                )
            : Container()
        ],
      ),
    );
  }
}