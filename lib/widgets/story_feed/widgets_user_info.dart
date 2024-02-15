import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:refierelo_marketplace/app/models/user_model.dart';
import 'package:cached_network_image/cached_network_image.dart';


class WidgetsUserInfo extends StatelessWidget {
  const WidgetsUserInfo({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Wrap(
        children: <Widget>[
          CircleAvatar(
            radius: 15.0.r,
            backgroundColor: Colors.grey[300],
            backgroundImage: CachedNetworkImageProvider(
              user.profileImageUrl
            ),
          ),
          SizedBox(width: 10.0.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name,
              style:const TextStyle(fontFamily: "Aileron",fontSize: 14,color:Colors.white)),
              const Text(
                "3.h",
                style: TextStyle(fontFamily: "Aileron", fontWeight: FontWeight.w100, color: Colors.white),)
            ],
          ),
        ],
      ),
    );
  }
}
