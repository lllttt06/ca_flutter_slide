import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/code_view.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide5 extends FlutterDeckSlideWidget {
  const Slide5()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/5'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        pageNumber: 5,
        title: 'Flutter のアニメーション',
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                children: [
                  CGap(heightFactor: 0.02),
                  CodeView(
                    code: _code,
                    widthFactor: 0.37,
                    heightFactor: 0.5,
                  ),
                ],
              ),
              const CGap(widthFactor: 0.05),
              Expanded(
                child: Column(
                  children: [
                    AutoResizedText(
                      'よく使われるのは',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.semiBold,
                      alignment: Alignment.centerLeft,
                    ),
                    AutoResizedText(
                      '・Animation Class',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.copyWith(height: 1.5),
                      alignment: Alignment.centerLeft,
                    ),
                    Row(
                      children: [
                        AutoResizedText(
                          '・',
                          textAreaHeight: context.slideSize.height * 0.08,
                          style:
                              context.text.displayLarge?.copyWith(height: 1.5),
                        ),
                        LinkText(
                          text: 'flutter_animate',
                          url: 'https://pub.dev/packages/flutter_animate',
                          textAreaHeight: context.slideSize.height * 0.08,
                          style:
                              context.text.displayLarge?.copyWith(height: 1.5),
                        ),
                        AutoResizedText(
                          ' などのパッケージ',
                          textAreaHeight: context.slideSize.height * 0.08,
                          style:
                              context.text.displayLarge?.copyWith(height: 1.5),
                        ),
                      ],
                    ),
                    const CGap(heightFactor: 0.05),
                    AutoResizedText(
                      'デメリット',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.semiBold,
                      alignment: Alignment.centerLeft,
                    ),
                    AutoResizedText(
                      '・細かいアニメーションを作るのが難しい',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.copyWith(height: 1.5),
                      alignment: Alignment.centerLeft,
                    ),
                    AutoResizedText(
                      '・デザイナーとの共有が難しい',
                      textAreaHeight: context.slideSize.height * 0.08,
                      style: context.text.displayLarge?.copyWith(height: 1.5),
                      alignment: Alignment.centerLeft,
                    ),
                    const CGap(heightFactor: 0.05),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          size: context.slideSize.height * 0.05,
                        ),
                        const CGap(widthFactor: 0.01),
                        Row(
                          children: [
                            AutoResizedText(
                              'Rive',
                              textAreaHeight: context.slideSize.height * 0.12,
                              style: context.text.displayLarge?.bold.copyWith(
                                color: context.color.primary,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            AutoResizedText(
                              ' を使用！',
                              textAreaHeight: context.slideSize.height * 0.12,
                              style: context.text.displayLarge,
                              alignment: Alignment.centerLeft,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const _code = '''
// Animation Class を使用した例
AnimatedOpacity(
  duration: const Duration(milliseconds: 500),
  opacity: opacity,
  child: AnimatedScale(
    duration: const Duration(milliseconds: 500),
    scale: scale,
    child: const Text("Hello"),
  ),
);

// flutter_animate を使用した例
Text("Hello").animate()
  .fade(duration: 500.ms)
  .scale(duration: 500.ms);
  ''';
}
