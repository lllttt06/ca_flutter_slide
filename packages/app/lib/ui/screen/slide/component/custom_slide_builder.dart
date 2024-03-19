import 'package:auto_size_text/auto_size_text.dart';
import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/page_number_container.dart';
import 'package:flutter/material.dart';

Widget Function(BuildContext) customSlideBuilder({
  required String title,
  required Widget Function(BuildContext) builder,
  required int pageNumber,
  AlignmentGeometry alignment = Alignment.center,
}) {
  return (BuildContext context) {
    final padding = context.slideSize.height * 0.02;
    return PageNumberContainer(
      pageNumber: pageNumber,
      child: Padding(
        padding: EdgeInsets.fromLTRB(padding, padding, padding, 0),
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
            Expanded(
              child: Align(
                alignment: alignment,
                child: builder(context),
              ),
            ),
          ],
        ),
      ),
    );
  };
}
