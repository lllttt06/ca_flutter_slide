import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/main.dart';
import 'package:flutter/material.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class CodeView extends StatelessWidget {
  const CodeView({
    required this.code,
    required this.widthFactor,
    required this.heightFactor,
    this.language = 'dart',
    super.key,
  });

  final String code;
  final String language;
  final double widthFactor;
  final double heightFactor;

  @override
  Widget build(BuildContext context) {
    final slideSize = context.slideSize;
    final highlighter = Highlighter(
      language: language,
      theme: highlightTheme,
    );
    return Container(
      width: slideSize.width * widthFactor,
      height: slideSize.height * heightFactor,
      padding: EdgeInsets.all(context.isSmall ? 4 : 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.color.inversePrimary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff1E1E1E),
      ),
      child: SingleChildScrollView(
        child: Text.rich(
          highlighter.highlight(code),
          style: context.isSmall ? context.text.bodySmall : context.text.titleLarge,
        ),
      ),
    );
  }
}
