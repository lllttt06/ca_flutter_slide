import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/code_view.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide12 extends FlutterDeckSlideWidget {
  const Slide12()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/12'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textAreaHeight = context.slideSize.height * 0.1;

    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        pageNumber: 12,
        title: '実装の tips',
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Column(
            children: [
              Row(
                children: [
                  AutoResizedText(
                    '1. ',
                    textAreaHeight: textAreaHeight,
                    style: context.text.displayMedium,
                    alignment: Alignment.centerLeft,
                  ),
                  LinkText(
                    text: 'flutter_gen',
                    url: 'https://pub.dev/packages/flutter_gen',
                    textAreaHeight: textAreaHeight,
                    style: context.text.displayMedium,
                    alignment: Alignment.centerLeft,
                  ),
                  AutoResizedText(
                    ' を使う',
                    textAreaHeight: textAreaHeight,
                    style: context.text.displayMedium,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              AutoResizedText(
                '  asset を文字列ではなく型安全に使用できる',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              const CGap(heightFactor: 0.05),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CodeView(
                    code: _codeBefore,
                    widthFactor: 0.4,
                    heightFactor: 0.43,
                  ),
                  CodeView(
                    code: _codeAfter,
                    widthFactor: 0.4,
                    heightFactor: 0.43,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const _codeBefore = '''
// BEFORE
RiveAnimation.asset(
  'assets/rive/light_like.riv',
  onInit: (artboard) {
    stateMachineController.value = StateMachineController.fromArtboard(
      artboard,
      'LikeStateMachine',
    );
    artboard.addController(stateMachineController.value!);
    pressed.value ??= stateMachineController.value!
        .findInput<bool>('Pressed')! as SMIBool;
  },
);
  ''';

  static const _codeAfter = '''
// AFTER
Assets.rive.lightLike.rive(
  onInit: (artboard) {
    stateMachineController.value = StateMachineController.fromArtboard(
      artboard,
      'LikeStateMachine',
    );
    artboard.addController(stateMachineController.value!);
    pressed.value ??= stateMachineController.value!
        .findInput<bool>('Pressed')! as SMIBool;
  },
);
  ''';
}
