import 'package:auto_size_text/auto_size_text.dart';
import 'package:ca_flutter_slide/gen/fonts.gen.dart';
import 'package:flutter/widgets.dart';

class AutoResizedText extends StatelessWidget {
  const AutoResizedText(
    this.text, {
    required this.textAreaHeight,
    this.alignment = Alignment.center,
    this.textAreaWidth,
    this.style,
    this.textAlign,
    super.key,
  });

  final String text;
  final double textAreaHeight;
  final AlignmentGeometry alignment;
  final double? textAreaWidth;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: textAreaHeight,
      width: textAreaWidth,
      child: Align(
        alignment: alignment,
        child: AutoSizeText(
          text,
          style: style?.copyWith(fontFamily: FontFamily.notoSans),
          textAlign: textAlign,
        ),
      ),
    );
  }
}
