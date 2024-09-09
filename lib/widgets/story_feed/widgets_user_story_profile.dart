import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:refierelo_marketplace/widgets/custom_aileron_fonts.dart';
import 'package:refierelo_marketplace/widgets/story_feed/widget_story_edit_image.dart';
import 'package:refierelo_marketplace/widgets/widget_botton_select.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class WidgetsUserStoryProfile extends StatefulWidget {
  const WidgetsUserStoryProfile(
      {super.key,
      required this.index,
      required this.setRectPoint,
      required this.onStoryItemTap,
      required this.backgroundImage,
      });

  final int index;
  final Function(Rect?) setRectPoint;
  final Function(Rect?, int) onStoryItemTap;
  final ImageProvider backgroundImage;

  @override
  State<WidgetsUserStoryProfile> createState() =>
      _WidgetsUserStoryProfileState();
}

class _WidgetsUserStoryProfileState extends State<WidgetsUserStoryProfile>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> base;
  late Animation<double> reverse;
  Rect? rect;
  GlobalKey touchPoint = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage:widget.backgroundImage,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          child: GestureDetector(
            onTap: () {},
            key: touchPoint,
            behavior: HitTestBehavior.opaque,
            onTapUp: (details) {
              RenderBox renderBox =
                  touchPoint.currentContext!.findRenderObject() as RenderBox;
              Offset localPosition =
                  renderBox.globalToLocal(details.globalPosition);
              final size = renderBox.size;
              rect = Rect.fromLTWH(
                localPosition.dx,
                localPosition.dy,
                size.width,
                size.height,
              );
              widget.setRectPoint(rect);
            },
            // child: const SizedBox(
            //   width: 70,
            //   height: 70,
            //   child: SimpleCircularProgressBar(
            //     fullProgressGradient: SweepGradient(
            //       tileMode: TileMode.decal,
            //       colors: [
            //         Color(0xFF02b5e7),
            //         Color(0xFF003366),
            //         Color(0xFF02b5e7),
            //       ],
            //     ),
            //     size: 70,
            //     progressStrokeWidth: 4,
            //     backColor: Colors.white,
            //     animationDuration: 1,
            //     maxValue: 100,
            //   ),
            // ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 7,
          child: Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const WidgetDisplayMenuStory();
                    });
              },
              child: Icon(
                Icons.add_circle,
                size: 25, // Ajusta el tamaño del icono según tus necesidades
                color: Colors.blue.shade700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WidgetDisplayMenuStory extends StatefulWidget {
  const WidgetDisplayMenuStory({super.key});

  @override
  WidgetDisplayMenuStoryState createState() => WidgetDisplayMenuStoryState();
}

class WidgetDisplayMenuStoryState extends State<WidgetDisplayMenuStory> {
  late List<bool> isButtonSelectedList;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    isButtonSelectedList = List.generate(2, (index) => false);
  }

  void selectOnly(int index) {
    setState(() {
      for (int i = 0; i < isButtonSelectedList.length; i++) {
        isButtonSelectedList[i] = (i == index);
      }
    });
  }

  void toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  Future<void> pickImage(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Set the selectedImagePath
      selectedImagePath = pickedFile.path;

      // Use `context` directly within the asynchronous call
      Future.delayed(Duration.zero, () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WidgetsStoryEditImage(
              selectedImage: File(selectedImagePath!),
            ),
          ),
        );
      });
    }
  }

  Widget buildContainer({
    required int index,
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          selectOnly(index);
          toggleVisibility();

          pickImage(context);
        },
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.transparent,
                spreadRadius: 0,
                blurRadius: 20,
                offset: Offset(0, 0),
              ),
            ],
            border: Border.all(
              color: isButtonSelectedList[index]
                  ? Colors.transparent
                  : Colors.white,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.width * 0.010,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFf1f1f1),
                  ),
                  child: Icon(
                    icon,
                    size: MediaQuery.of(context).size.width * 0.06,
                    color: const Color(0xFF000000), // Color del icono
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomFontAileronBold(text: title),
                      CustomFontAileronRegular2(
                        text: subtitle,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                WidgetBottonSelect(
                  isSelected: isButtonSelectedList[index],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 9),
              height: 5,
              decoration: const BoxDecoration(
                color: Color(0xFF666666),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: MediaQuery.of(context).size.width * 0.12,
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  buildContainer(
                    index: 0,
                    title: 'Subir Historia',
                    subtitle: 'Publica contenido >',
                    icon: Icons.photo_filter_sharp,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.03,
                  ),
                  buildContainer(
                    index: 1,
                    title: 'Imagen de perfil',
                    subtitle: 'Cambia tu imagen >',
                    icon: Icons.photo_library,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String? selectedImagePath; // Store the selected image path globally