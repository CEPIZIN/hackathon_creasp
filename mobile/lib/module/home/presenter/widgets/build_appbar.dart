import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackathon_creasp/core/extensions/build_context_utils.dart';
import 'package:hackathon_creasp/core/styles/colors.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: AppColors.onSecondary,
    leading: Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/logo.png'),
          Row(
            children: [
              InkWell(
                onTap: () => Modular.to.navigate("settings"),
                child: Icon(
                  Icons.settings,
                  color: AppColors.primary,
                  size: 24,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () => Modular.to.navigate("/"),
                child: Icon(
                  Icons.logout,
                  color: AppColors.primary,
                  size: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    leadingWidth: context.mediaWidth * 1.0,
  );
}
