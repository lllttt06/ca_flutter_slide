import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/state/citation_state.dart';
import 'package:ca_flutter_slide/ui/component/citation_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class InteractiveAnimationSlide1 extends FlutterDeckSlideWidget {
  const InteractiveAnimationSlide1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/interactive-animation-slide/1',
            header: FlutterDeckHeaderConfiguration(
              title: 'インタラクティブアニメーションとは',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return HookBuilder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Unlike traditional animation, '
                      'interactive animation is designed to respond to user input,'
                      ' creating a more dynamic and engaging experience.',
                      style: context.text.displayLarge,
                    ),
                    CitationContainer(
                      description: 'duolingo',
                      citation:
                          const Citation(description: 'duolingo', url: ''),
                      child: Assets.images.duolingoInteractive.image(
                        width: context.screenSize.width * 0.6,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class InteractiveAnimationSlide2 extends FlutterDeckSlideWidget {
  const InteractiveAnimationSlide2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/interactive-animation-slide/2',
            header: FlutterDeckHeaderConfiguration(
              title: 'インタラクティブアニメーションとは',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Center(
          child: Row(
            children: [
              ClipOval(
                child: Assets.images.self.image(
                  width: context.screenSize.width * 0.2,
                  height: context.screenSize.width * 0.2,
                ),
              ),
              const Gap(60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '吉田航己 / Yoshida Koki',
                    style: context.text.displayMedium,
                  ),
                  const Gap(40),
                  Text(
                    '株式会社サイバーエージェント 2023 年度入社',
                    style: context.text.displayMedium,
                  ),
                  Text(
                    'X: @koki8442',
                    style: context.text.displaySmall,
                  ),
                  Text(
                    'Github: lllttt06',
                    style: context.text.displaySmall,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
