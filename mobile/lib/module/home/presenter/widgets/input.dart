import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_creasp/core/extensions/build_context_utils.dart';
import 'package:hackathon_creasp/core/styles/text_styles.dart';

class InputWidget extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  const InputWidget({super.key, required this.title, required this.controller});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LayoutBuilder(builder: (context, contraints) {
          if (context.mediaWidth < 600) {
            return Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.title,
                  style: GoogleFonts.inter(textStyle: styleModifier.smallGray),
                ));
          } else {
            return Text(
              widget.title,
              style: GoogleFonts.inter(textStyle: styleModifier.smallGray),
            );
          }
        }),
        const SizedBox(
          height: 5,
        ),
        Container(
            width: 351,
            height: 49,
            decoration: ShapeDecoration(
              color: const Color(0x00333333),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFF1B2267)),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: TextFormField(
              controller: widget.controller,
              style: styleModifier.smallBlue,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ))
      ],
    );
  }
}
