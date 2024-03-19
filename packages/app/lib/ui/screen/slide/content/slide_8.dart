import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/empty.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/like_button.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class Slide8 extends FlutterDeckSlideWidget {
  const Slide8()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/8',
            title: 'UseCase of Flutter',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final demoWidth = context.slideSize.height * 0.4;
    final textAreaHeight = context.slideSize.height * 0.05;

    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 8,
        title: context.l10n.slide_8_title,
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.slideSize.width * 0.02,
              ),
              child: LinkText(
                text: context.l10n.slide_8_from_rive_use_case,
                url: 'https://rive.app/use-cases',
                textAreaHeight: textAreaHeight * 2,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
            ),
            Gap(context.slideSize.height * 0.1),
            Table(
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Column(
                        children: [
                          AutoResizedText(
                            context.l10n.slide_8_like,
                            textAreaHeight: textAreaHeight,
                            style: context.text.displayLarge?.bold,
                          ),
                          LikeButton(width: demoWidth, height: demoWidth),
                        ],
                      ),
                    ),
                    TableCell(
                      child: Column(
                        children: [
                          AutoResizedText(
                            context.l10n.slide_8_rating,
                            textAreaHeight: textAreaHeight,
                            style: context.text.displayLarge?.bold,
                          ),
                          Rating(width: demoWidth, height: demoWidth),
                        ],
                      ),
                    ),
                    TableCell(
                      child: Column(
                        children: [
                          AutoResizedText(
                            'Empty',
                            textAreaHeight: textAreaHeight,
                            style: context.text.displayLarge?.bold,
                          ),
                          Empty(width: demoWidth, height: demoWidth),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
