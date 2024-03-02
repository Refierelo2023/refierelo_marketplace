// ignore: import_of_legacy_library_into_null_safe
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:permission_handler/permission_handler.dart';
import 'package:refierelo_marketplace/data/screens/Share/components/contact_user.dart';

class AllContactsScreen extends StatefulWidget {
  const AllContactsScreen({super.key});

  @override
  State<AllContactsScreen> createState() => _AllContactsScreenState();
}

class _AllContactsScreenState extends State<AllContactsScreen> {
  List<Contact> contacts = [];
  bool contactsLoaded = false;
  bool permissionDone = false;

    @override
  void initState() {
    super.initState();
    getPermissions();
  }

  getPermissions() async {
    if(await Permission.contacts.request().isGranted){
      permissionDone = true;
      getAllContacts();
    }
  }

  getAllContacts() async {
    List<Contact> contacts = (await ContactsService.getContacts()).toList();

    setState(() {
      contacts = contacts;
      contactsLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff003366), Color(0xff02B5E7)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: (contactsLoaded == true) ? 
          contacts.isNotEmpty ?
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: contacts.length,
                itemBuilder: (context, index){
                  return ContactUser(nameContact: contacts[index].displayName??'',
                  phoneContact: contacts[index].phones??[],
                   initialsContact: contacts[index].initials());
                }
              ),
            )
          ],
        ) : const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('assets/images/pop_referir/emoji.png'),
            Text('No hay contactos para mostrar.', style: TextStyle(color: Colors.white),)
            ],
          )
         : Center(child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/loading/LOADING.gif',
                height: 100,
                width: 100,
              ),
            ],
          ),)
        ),
      ),
    );
  }
}