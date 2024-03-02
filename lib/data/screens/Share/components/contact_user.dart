
import 'dart:io';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:grpc/grpc.dart';
import 'package:refierelo_marketplace/data/screens/componentscopy/components.dart';
import 'package:refierelo_marketplace/generated/service.pbgrpc.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Register/components/components.dart';

class ContactUser extends StatefulWidget {
  final String nameContact;
  final List<Item> phoneContact;
  final String initialsContact;

  const ContactUser(
      {super.key,
      required this.nameContact,
      required this.phoneContact,
      required this.initialsContact});

  @override
  State<ContactUser> createState() => _ContactUserState();
}

class _ContactUserState extends State<ContactUser> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.25),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey,
          child: Text(widget.initialsContact,
              style: const TextStyle(color: Colors.white)),
        ),
        title: Text(widget.nameContact,
            style: const TextStyle(color: Colors.white)),
        trailing: Container(
          height: size.height * 0.04,
          width: size.width * 0.2,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xffF8E43E), Color(0xffCE8F21)]),
              borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () async {
              for (var element in widget.phoneContact) {
                var whatsapp = element.value;
                var whatsappUrl = '';

                if (Platform.isIOS) {
                  whatsappUrl = 'https://wa.me/$whatsapp?text=¡Hola!';
                } else {
                  whatsappUrl = 'whatsapp://send?phone=$whatsapp&text=http://www.refierelo.com/usario/miguelrodriguez8733+Echa+un+vistazo+a+esta+app+que+te+paga+por+referir,+registrate+y+gánate+tus+primeros+10+puntos+de+bienvenida+😃';
                }

                if (!await launchUrl(Uri.parse(whatsappUrl))) {
                  toast('WhatsApp no instalado.', Colors.red);
                }
              }

              try {

                if (widget.phoneContact.isEmpty) {
                  toast('Este contacto no tiene número.', Colors.orange);
                  return;
                }

                var channel = getChannel();
                var response = await ServiceClient(getChannel())
                    .mensajeContactosRegister(mensajeContactosRequest(
                        sessionString:
                            (await SessionManager().get('sessionString')),
                        nombreContacto: widget.nameContact.toString(),
                        numeroTelefono: widget.phoneContact.first.value.toString()));

                channel.shutdown();
                toast(response.mensaje, Colors.green);
              } on GrpcError catch (e) {
                toast(e.message ?? 'Hubo un error.', Colors.red);
              } on Exception {
                toast('Hubo un error.', Colors.red);
              }
            },
            child: const CustomFontAileronRegularWhite(text: "Invitar",),
          ),
        ),
      ),
    );
  }
}
