import 'user_model.dart';

enum MediaType { image, video }

class Story {
  String? localFilePath;  // Nueva propiedad para almacenar la ruta local
  String? url;  // URL para imágenes externas (opcional)
  MediaType media;
  User user;
  Duration duration;

  Story({
    this.localFilePath,
    this.url,
    required this.media,
    required this.user,
    required this.duration,
  });
}
