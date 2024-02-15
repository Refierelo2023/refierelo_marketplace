import 'dart:math';

import 'package:url_launcher/url_launcher.dart';

String generateSessionString(){
  return String.fromCharCodes(Iterable.generate(
          30,
          (_) => 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'
              .codeUnitAt(Random().nextInt(
                  'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'
                      .length))));
}

enum SocialMedia {facebook, twitter, email, linkedin, whatsapp}

Future share (SocialMedia socialPlatform) async{
  const subject = "";
  const text = "texto";
  final urlShare = Uri.encodeComponent("https://www.youtube.com/watch?v=bWehAFTFc9o");

  final urls = {
    SocialMedia.facebook: 'https://www.facebook.com/sharer/sharer.php?u=$urlShare&t=$text',
    SocialMedia.twitter: 'https://twitter.com/intent/tweet?url=$urlShare&text=$text',
    SocialMedia.email: 'mailto:?subject=$subject&body=$text\n\n$urlShare',
    SocialMedia.linkedin: 'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    SocialMedia.whatsapp: 'https://api.whatsapp.com/send?text=$text$urlShare',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), webOnlyWindowName: '');
  }
}