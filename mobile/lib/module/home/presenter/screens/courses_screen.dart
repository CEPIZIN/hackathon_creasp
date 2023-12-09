import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_creasp/core/extensions/build_context_utils.dart';
import 'package:hackathon_creasp/core/styles/colors.dart';
import 'package:hackathon_creasp/core/styles/text_styles.dart';
import 'package:hackathon_creasp/module/home/presenter/widgets/build_appbar.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      backgroundColor: AppColors.onSecondary,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Modular.to.navigate("home"),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.primary,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Cursos",
                    style:
                        GoogleFonts.poppins(textStyle: styleModifier.smallBlue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 614,
              width: context.mediaWidth * 1.0,
              child: Image.asset('assets/mock-courses.png'),
            ),
          ],
        ),
      ),
    );
  }
}
