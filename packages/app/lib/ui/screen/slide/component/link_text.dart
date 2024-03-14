import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

class LinkText extends StatelessWidget {
  const LinkText({
    required this.text,
    required this.url,
    required this.textAreaHeight,
    this.style,
    this.alignment = Alignment.center,
    super.key,
  });

  final String text;
  final String url;
  final double textAreaHeight;
  final AlignmentGeometry alignment;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        window.open(url, '');
      },
      child: AutoResizedText(
        text,
        textAreaHeight: textAreaHeight,
        style: (style ?? context.text.bodyLarge)!.copyWith(
          color: Colors.blue,
        ),
        alignment: alignment,
      ),
    );
  }
}
