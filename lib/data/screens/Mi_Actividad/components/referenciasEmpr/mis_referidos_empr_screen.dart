import 'package:flutter/material.dart';

class MisReferidosEmprScreen extends StatefulWidget {
  const MisReferidosEmprScreen({super.key});

  @override
  State<MisReferidosEmprScreen> createState() => _MisReferidosEmprScreenState();
}

class _MisReferidosEmprScreenState extends State<MisReferidosEmprScreen> {



  int totalGanado = 0;

  TextEditingController term = TextEditingController();

  // final PagingController<int, referenciaEmpresa> _pagingController = PagingController(firstPageKey: 1);

  // @override
  // void initState() {
  //   super.initState();
  //   _pagingController.addPageRequestListener((pageKey) {
  //     // getReferenciasEmpresas(pageKey);
  //   });
  // }

  // Future<void> getReferenciasEmpresas(int pageKey) async {
  //   var channel = getChannel();
  //   try {
  //   var response = await ServiceClient(channel).getReferenciasEmpresas(getReferenciasEmprRequest(
  //           sessionString: await SessionManager().get('sessionString'), pageKey: pageKey.toString(), term: term.text));

  //   setState(() {
  //     totalGanado = response.puntosGanados;
  //   });

  //   // final isLastPage = response.data.length < response.sizePage;
  //   final isLastPage = response.more == false;
  //     if (isLastPage) {
  //       _pagingController.appendLastPage(response.data);
  //     } else {
  //       final nextPageKey = pageKey + 1;
  //       _pagingController.appendPage(response.data, nextPageKey);
  //     }
  //   } on GrpcError catch (e) {
  //     toast(e.message??'Hubo un error', Colors.red);
  //     _pagingController.error = e;
  //   } on Exception catch (e) {
  //     toast('Hubo un error', Colors.red);
  //     _pagingController.error = e;
  //   } finally {
  //     channel.shutdown();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xff003366), Color(0xff02B5E7)])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: 
        SingleChildScrollView(
          child: SizedBox(
            height: size.height*0.95,
            child: Column(
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
                            Image.asset('assets/images/mi_actividad/3.png', height: size.height * 0.04,),
                            SizedBox(width: size.width * 0.01),
                            const Text('Empresas referidas' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Text('TOTAL +${totalGanado.toString()}', style: const TextStyle(color: Color(0xff00DFEE), fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                // Container(
                //     height: size.height * 0.06,
                //     width: size.width,
                //     margin: EdgeInsets.symmetric(horizontal: size.width * 0.06, vertical: size.height * 0.03),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       color: Colors.white.withOpacity(0.2)
                //     ),
                //     child: TextFormField(
                //       onFieldSubmitted: ((value) {
                //         refresh();
                //         }),
                //         controller: term,
                //       decoration: const InputDecoration(
                //         hintText: 'Buscar',
                //         hintStyle: TextStyle(color: Colors.grey),
                //         contentPadding: EdgeInsets.all(2),
                //         border: InputBorder.none,
                //         icon: ImageIcon(AssetImage('assets/images/preguntas_frecuentes/buscar.png'), color: Colors.white, size: 25,)
                //       ),
                //     ),
                //   ),
                  // SizedBox(height: size.height * 0.02),
          
                  // Expanded(
                  // child:  Container(
                  // width: MediaQuery.of(context).size.width,
                  // margin: const EdgeInsets.only(left: 10, right: 10),
                  // child: RefreshIndicator(
                  //     onRefresh: refresh,
                  //     // child: PagedListView<int, referenciaEmpresa>(
                  //     //   pagingController: _pagingController,
                  //     //   builderDelegate: PagedChildBuilderDelegate<referenciaEmpresa>(
                  //     //       noItemsFoundIndicatorBuilder: ((context) {
                  //     //         return const Column(
                  //     //           mainAxisAlignment: MainAxisAlignment.center,
                  //     //           children: [
                  //     //           Text('No se encontraron registros', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  //     //         ],);
                  //     //       }),
                  //     //       itemBuilder: (context, item, index) =>
                  //     //           ElementoDetalleReferenciaEmpr(item: item),
                  //     //       firstPageProgressIndicatorBuilder: (_) =>
                  //     //           const Center(child: CircularProgressIndicator()),
                  //     //       newPageProgressIndicatorBuilder: (_) =>
                  //     //           const Center(child: CircularProgressIndicator()),
                  //     //           ),
                  //     // ),
                  //     )))
              ],
            ),
          ),
        )),
      ),
    );
  }

  //  Future refresh() async {
  //   setState(() {
  //     // _pagingController.dispose();
  //     // _pagingController = PagingController(firstPageKey: 1);
  //     _pagingController.refresh();
  //   });
  // }
}