import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_creasp/core/extensions/build_context_utils.dart';
import 'package:hackathon_creasp/core/styles/colors.dart';
import 'package:hackathon_creasp/core/styles/text_styles.dart';
import 'package:hackathon_creasp/module/home/presenter/widgets/input.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final styleModifier = context.appTextStyles;
    return Scaffold(
      backgroundColor: AppColors.onSecondary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/header.png'),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    InputWidget(
                      title: 'E-mail',
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputWidget(
                      title: 'Password',
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () => Modular.to.navigate('home'),
                      child: Container(
                        alignment: Alignment.center,
                        width: context.mediaWidth * 0.8,
                        height: 45,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Entrar",
                          style: GoogleFonts.poppins(
                              textStyle: styleModifier.smallWhite),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 179,
                      width: 353,
                      child: Image.asset('assets/mock-auth.png'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
