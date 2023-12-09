import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_creasp/core/styles/colors.dart';
import 'package:hackathon_creasp/core/styles/text_styles.dart';
import 'package:hackathon_creasp/module/home/presenter/widgets/build_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
      backgroundColor: AppColors.onSecondary,
      appBar: buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bem vindo(a), Lais!",
              style: GoogleFonts.poppins(textStyle: styleModifier.smallBlue),
            ),
            Text(
              "Atualmente possui 5 check-in.",
              style: GoogleFonts.poppins(textStyle: styleModifier.smallBlue),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 36,
              width: 329,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(27)),
              child: Text(
                "Marcar check-in coworking",
                style: GoogleFonts.poppins(textStyle: styleModifier.smallWhite),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "EM DESTAQUES",
              style: GoogleFonts.poppins(textStyle: styleModifier.mediumGray),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GoScreenWidget(
                  title: "Cursos",
                  quantity: "24",
                  onTap: () => Modular.to.navigate("course"),
                ),
                const GoScreenWidget(
                  title: "Palestras",
                  quantity: "12",
                ),
                const GoScreenWidget(
                  title: "Encontros",
                  quantity: "125",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GoScreenWidget(
                  title: "Desafios",
                  quantity: "3",
                ),
                GoScreenWidget(
                  title: "Curriculo \nCREA",
                  quantity: "",
                ),
                GoScreenWidget(
                  title: "Certificados",
                  quantity: "2",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GoScreenWidget extends StatelessWidget {
  final String title;
  final String quantity;
  final Function()? onTap;
  const GoScreenWidget(
      {super.key, required this.title, required this.quantity, this.onTap});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 110.60,
        height: 95.67,
        decoration: ShapeDecoration(
          color: AppColors.onSecondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.system_security_update,
              color: AppColors.primary,
              size: 24,
            ),
            Text(
              title,
              style: GoogleFonts.poppins(textStyle: styleModifier.smallBlue),
            ),
            Text(
              quantity,
              style: GoogleFonts.poppins(textStyle: styleModifier.smallGray),
            )
          ],
        ),
      ),
    );
  }
}
