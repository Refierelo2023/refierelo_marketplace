class Referente {
  String nombre;
  String fotoPerfil;
  int referidos;
  int compartido;

  Referente({
    required this.nombre,
    required this.fotoPerfil,
    required this.referidos,
    required this. compartido,
  });
}

final List<Referente> allReferentes = [
  Referente(
    nombre: "Alisson Rodriguez",
    fotoPerfil: "https://scontent.fbog2-5.fna.fbcdn.net/v/t31.18172-8/10011948_10204927255158224_3156113536672455735_o.jpg?stp=dst-jpg_p526x296&_nc_cat=109&ccb=1-7&_nc_sid=2be8e3&_nc_eui2=AeHQ4oVmwqwE-oyHqe_fH1nNDNp-BmliZUMM2n4GaWJlQ3uaI9nVOR51LD0POHCG0e8&_nc_ohc=u6Kum_7WRq4AX-7nvE9&_nc_oc=AQmST2kh4ZHr3TxCXpPglj2kU3SR5B0PiFaCqMrY0ONKeeXB7ciWXqvRqjYFxMEWapQ&_nc_ht=scontent.fbog2-5.fna&oh=00_AfCM3uGeZAmXuE2IS0H-gPr_hDCZsvLCVd0_24WZwVOnYg&oe=65EE1385",
    referidos: 20,
    compartido: 25,
  ),
  Referente(
    nombre: "María López",
    fotoPerfil: "https://res.cloudinary.com/pozters/image/upload/w_700/v1535554479/prod_uploads/59R7X261y7zE1j8gnd0lq",
    referidos: 18,
    compartido: 26,
  ),
  Referente(
    nombre: "Carlos Ramirez",
    fotoPerfil: "https://www.seekpng.com/png/detail/50-503873_facebook-teerasej-profile-ball-circle-facebook-profile-picture.png",
    referidos: 12,
    compartido: 30,
  ),
  Referente(
    nombre: "Juan valderrama",
    fotoPerfil: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-5PXBVOmyMy6RbnwKVm3Nya1MN8AtVrCelucrZcKqIqZ2rtKth-l9RwtFtW-wE4yMmjw&usqp=CAU",
    referidos: 8,
    compartido: 32,
  ),
  Referente(
    nombre: "Carolina guerra",
    fotoPerfil: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW5tl3nEH8_GmEnhqc3hQ3Hmz3C4pqwQvMULMmtAisLYWeDyjhtoM2gniQLap2ypqxTiE&usqp=CAU",
    referidos: 5,
    compartido: 25,
  ),
  Referente(
    nombre: "Pedro Fernandez ",
    fotoPerfil: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcuNsgCIWPOs6hgEKQ3w_D6ehKS_IkcM_5u5f7x4qAGCJrOJVgkDFoBpytVa8wJY2l5O4&usqp=CAU",
    referidos: 4,
    compartido: 25,
  ),
  Referente(
    nombre: "Maria Trinidad",
    fotoPerfil: "https://scontent.fbog18-2.fna.fbcdn.net/v/t39.30808-6/367950846_10231052122263574_250139640849423068_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=3635dc&_nc_eui2=AeFciuUyMj7qeeVdKUVSHaanyAtODkyiiC7IC04OTKKILp0sEoPep72wKQlvPpJPW3k&_nc_ohc=EWPPW1kbpb4AX-hrc_8&_nc_zt=23&_nc_ht=scontent.fbog18-2.fna&oh=00_AfCodR4E-tBW8akdeHCBNWyiOo7czzrEzB9xvnWI4kF1Vg&oe=65CC04BD",
    referidos: 4,
    compartido: 25,
  ),
  Referente(
    nombre: "Jorge Rodriguez",
    fotoPerfil: "https://scontent.fbog18-2.fna.fbcdn.net/v/t39.30808-6/367990332_10231052122223573_5187602495841914401_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=3635dc&_nc_eui2=AeFHHBCaaDgCgtkBX-Ch0d2dQ14CI61KqQFDXgIjrUqpAYYWkxBPMe3PN61tTALCBHE&_nc_ohc=TRRMnVBgMTcAX931GyO&_nc_zt=23&_nc_ht=scontent.fbog18-2.fna&oh=00_AfDHazxdHjxdknjwwbyXXql1mNjWEoLXsH0PVVoa3Ch9lg&oe=65CC5B40",
    referidos: 2,
    compartido: 10,
  ),
  // Agrega más referentes según sea necesario
];
