import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide6 extends FlutterDeckSlideWidget {
  const Slide6()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/6',
            title: 'Resolve Flutter Animation demerit with Rive',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 6,
        title: context.l10n.slide_6_title,
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Column(
            children: [
              const CGap(heightFactor: 0.12),
              AutoResizedText(
                context.l10n.slide_5_demerit_1,
                textAreaHeight: context.slideSize.height * 0.08,
                style: context.text.displayLarge?.copyWith(height: 1.5),
                alignment: Alignment.centerLeft,
              ),
              AutoResizedText(
                context.l10n.slide_6_solution_1,
                textAreaHeight: context.slideSize.height * 0.08,
                style: context.text.displayLarge?.copyWith(height: 1.5),
                alignment: Alignment.centerLeft,
              ),
              const CGap(heightFactor: 0.05),
              AutoResizedText(
                context.l10n.slide_5_demerit_2,
                textAreaHeight: context.slideSize.height * 0.08,
                style: context.text.displayLarge?.copyWith(height: 1.5),
                alignment: Alignment.centerLeft,
              ),
              Row(
                children: [
                  AutoResizedText(
                    context.l10n.slide_6_solution_2_1,
                    textAreaHeight: context.slideSize.height * 0.08,
                    style: context.text.displayLarge?.copyWith(height: 1.5),
                    alignment: Alignment.centerLeft,
                  ),
                  LinkText(
                    text: 'Share Link',
                    url:
                        'https://help.rive.app/editor/share-links#managing-share-links',
                    textAreaHeight: context.slideSize.height * 0.08,
                    style: context.text.displayLarge?.copyWith(height: 1.5),
                    alignment: Alignment.centerLeft,
                  ),
                  AutoResizedText(
                    context.l10n.slide_6_solution_2_2,
                    textAreaHeight: context.slideSize.height * 0.08,
                    style: context.text.displayLarge?.copyWith(height: 1.5),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              Row(
                children: [
                  AutoResizedText(
                    context.l10n.slide_6_solution_3_1,
                    textAreaHeight: context.slideSize.height * 0.08,
                    style: context.text.displayLarge?.copyWith(height: 1.5),
                    alignment: Alignment.centerLeft,
                  ),
                  LinkText(
                    text: 'Preview',
                    url: 'https://rive.app/preview/',
                    textAreaHeight: context.slideSize.height * 0.08,
                    style: context.text.displayLarge?.copyWith(height: 1.5),
                    alignment: Alignment.centerLeft,
                  ),
                  AutoResizedText(
                    context.l10n.slide_6_solution_3_2,
                    textAreaHeight: context.slideSize.height * 0.08,
                    style: context.text.displayLarge?.copyWith(height: 1.5),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
