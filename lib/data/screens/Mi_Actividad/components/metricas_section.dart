import 'package:flutter/material.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';

class MetricasSection extends StatelessWidget {
  const MetricasSection({super.key, required this.metricas});

  final getMetricasResponse metricas;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/mi_actividad/5.png',
                  height: size.height * 0.04),
              SizedBox(width: size.width * 0.03),
              const Text(
                'Metricas',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            padding: EdgeInsets.only(top: size.height * 0.02, bottom: size.height * 0.02, left: size.width * 0.02, right: size.width * 0.1),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.23),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'TOTAL REFERIDOS',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: size.width * 0.06),
                    Text(
                      metricas.totalReferidos,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'REFERIDOS EN PROCESO',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: size.width * 0.06),
                    Text(
                      metricas.referidosEnProceso,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'REFERIDOS ANULADOS',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: size.width * 0.06),
                    Text(
                      metricas.referidosAnulados,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'REFERIDOS CONVERTIDOS',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: size.width * 0.06),
                    Text(
                      metricas.referidosConvertidos,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'TASA DE CONVERSION',
                      style: TextStyle(color: Color(0xff00DFEE)),
                    ),
                    SizedBox(width: size.width * 0.06),
                    Text(
                      '${metricas.tasaConversion}%',
                      style: const TextStyle(color: Color(0xff00DFEE)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
