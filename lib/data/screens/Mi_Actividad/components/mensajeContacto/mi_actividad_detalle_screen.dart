import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:refierelo_marketplace/data/screens/Mi_Actividad/components/mensajeContacto/elemento_detalle_mensaje.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import '../../../Register/components/components.dart';

class MiActividadDetalleScreen extends StatefulWidget {
  final String imgTitutulo;
  final String titulo;
  final String puntos;

  const MiActividadDetalleScreen({super.key, required this.imgTitutulo, required this.titulo, required this.puntos});

  @override
  State<MiActividadDetalleScreen> createState() => _MiActividadDetalleScreenState();
}

class _MiActividadDetalleScreenState extends State<MiActividadDetalleScreen> with TickerProviderStateMixin {
  List<getMensajeContactosResponse> mensajeContactos = [];

  int totalGanado = 0;

  TextEditingController term = TextEditingController();

  final PagingController<int, mensajeContacto> _pagingController = PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      getMensajeContactos(pageKey);
    });
    super.initState();
  }


  Future<void> getMensajeContactos(int pageKey) async {
    var channel = getChannel();
    try {
    var response = await ServiceClient(channel).getMensajeContactos(getMensajeContactosRequest(
            sessionString: await SessionManager().get('sessionString'), pageKey: pageKey.toString(), term: term.text));

    setState(() {
      totalGanado = response.puntosGanados;
    });

    // final isLastPage = response.data.length < response.sizePage;
    final isLastPage = response.more == false;
      if (isLastPage) {
        _pagingController.appendLastPage(response.data);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(response.data, nextPageKey);
      }
    } on GrpcError catch (e) {
      toast(e.message??'Hubo un error', Colors.red);
      _pagingController.error = e;
    } on Exception catch (e) {
      toast('Hubo un error', Colors.red);
      _pagingController.error = e;
    } finally {
      channel.shutdown();
    }
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: SingleChildScrollView(
          child: SizedBox(
            height: size.height*0.95,
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row
                (
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container
                    (
                        margin: EdgeInsets.only(left: size.width * 0.02),
                        child: IconButton
                        (
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(widget.imgTitutulo, height: size.height * 0.04,),
                          SizedBox(width: size.width * 0.01),
                          Text(widget.titulo , style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Text('TOTAL ${totalGanado.toString()}', style: const TextStyle(color: Color(0xff00DFEE), fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              Container(
                  height: size.height * 0.06,
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.06, vertical: size.height * 0.03),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.2)
                  ),
                  child: TextFormField(
                    controller: term,
                    onFieldSubmitted: ((value) {
                      refresh();
                      }),
                    decoration: const InputDecoration(
                      hintText: 'Buscar',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(2),
                      border: InputBorder.none,
                      icon: ImageIcon(AssetImage('assets/images/preguntas_frecuentes/buscar.png'), color: Colors.white, size: 25,)
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Expanded(
                child:  Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: RefreshIndicator(
                    onRefresh: refresh,
                    child: PagedListView<int, mensajeContacto>(
                      pagingController: _pagingController,
                      builderDelegate: PagedChildBuilderDelegate<mensajeContacto>(
                          noItemsFoundIndicatorBuilder: ((context) {
                            return const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Text('No se encontraron registros', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                            ],);
                          }),
                          itemBuilder: (context, item, index) =>
                              ElementoDetalleMensaje(item: item),
                          firstPageProgressIndicatorBuilder: (_) =>
                              const Center(child: CircularProgressIndicator()),
                          newPageProgressIndicatorBuilder: (_) =>
                              const Center(child: CircularProgressIndicator()),
                              ),
                    ),
                    )))
            ],
          ),)
        )),
      ),
    );
  }

   Future refresh() async {
    setState(() {
      // _pagingController.dispose();
      // _pagingController = PagingController(firstPageKey: 1);
      _pagingController.refresh();
    });
  }

    @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}