import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide11 extends FlutterDeckSlideWidget {
  const Slide11()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/11',
            title: 'Create Animation with Rive',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final s = context.slideSize;

    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 11,
        title: context.l10n.slide_9_title,
        builder: (context) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoResizedText(
                  context.l10n.slide_11_form_of_rive_file,
                  textAreaHeight: s.height * 0.1,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  context.l10n.slide_11_riv_file,
                  textAreaHeight: s.height * 0.1,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  context.l10n.slide_11_riv_file_description_1,
                  textAreaHeight: s.height * 0.07,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  context.l10n.slide_11_riv_file_description_2,
                  textAreaHeight: s.height * 0.07,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                const CGap(heightFactor: 0.02),
                AutoResizedText(
                  context.l10n.slide_11_rev_file,
                  textAreaHeight: s.height * 0.1,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  context.l10n.slide_11_rev_file_description_1,
                  textAreaHeight: s.height * 0.07,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
                AutoResizedText(
                  context.l10n.slide_11_rev_file_description_2,
                  textAreaHeight: s.height * 0.07,
                  textAreaWidth: s.width * 0.4,
                  style: context.text.displayMedium,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
            Assets.images.rivDownload.image(
              width: s.width * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
