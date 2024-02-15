import 'package:flutter/material.dart';

class ErrorAlert extends StatefulWidget {
  const ErrorAlert({super.key, required this.mensaje});

  final String mensaje;

  @override
  State<ErrorAlert> createState() => _ErrorAlertState();
}

class _ErrorAlertState extends State<ErrorAlert> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context, size),
    );
  }

  contentBox(BuildContext context, Size size) {
    return Container(
        height: size.height * 0.3,
        padding: EdgeInsets.zero,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xff003366), Color(0xff02B5E7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(29)),
        // clipBehavior: Clip.antiAlias,
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (() => Navigator.pop(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/pop_referir/close.png',
                      // height: size.height * 0.9,
                      width: size.width * 0.09,
                      // height: size.width * 0.1,
                      fit: BoxFit.fitHeight,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width*0.4,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text(
                          'Oops!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: size.height * 0.025),
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.01),
                        child: Text(
                          widget.mensaje,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ),
                  Column(children: [
                    SizedBox(height: size.height * 0.05),
                    SizedBox(
                      height: size.height*0.15,
                      width: size.width*0.36,
                      child: const Image(image: AssetImage('assets/images/error/error.png'), fit: BoxFit.cover,),
                    )
                  ])
                ],
              ),
            ],
          ),
        );
  }
}
