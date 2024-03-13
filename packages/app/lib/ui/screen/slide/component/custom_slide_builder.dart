import 'package:auto_size_text/auto_size_text.dart';
import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:flutter/material.dart';

Widget Function(BuildContext) customSlideBuilder({
  required String title,
  required Widget Function(BuildContext) builder,
  AlignmentGeometry alignment = Alignment.center,
}) {
  return (BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.slideSize.height * 0.02),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: context.slideSize.height * 0.1,
              width: context.slideSize.width,
              child: AutoSizeText(
                title,
                style: context.text.displayLarge?.semiBold.copyWith(
                  color: context.color.primary,
                ),
              ),
            ),
          ),
          // Gap(context.slideSize.height * 0.02),
          Expanded(
            child: Align(
              alignment: alignment,
              child: builder(context),
            ),
          ),
        ],
      ),
    );
  };
}

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
          style: style,
          textAlign: textAlign,
        ),
      ),
    );
  }
}
