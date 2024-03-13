import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/empty.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/like_button.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class RiveFlutterSampleSlide extends FlutterDeckSlideWidget {
  const RiveFlutterSampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rive-flutter-sample',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final demoWidth = context.slideSize.height * 0.4;
    final textAreaHeight = context.slideSize.height * 0.05;

    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: 'Flutter での活用事例',
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinkText(
              text: 'Rive 公式の UseCase より',
              url: 'https://rive.app/use-cases',
              textAreaHeight: textAreaHeight * 2,
              style: context.text.displayMedium,
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
                            'いいね',
                            textAreaHeight: textAreaHeight,
                            style: context.text.displayMedium,
                          ),
                          LikeButton(width: demoWidth, height: demoWidth),
                        ],
                      ),
                    ),
                    TableCell(
                      child: Column(
                        children: [
                          AutoResizedText(
                            'レーティング',
                            textAreaHeight: textAreaHeight,
                            style: context.text.displayMedium,
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
                            style: context.text.displayMedium,
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
