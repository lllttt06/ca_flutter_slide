import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/code_view.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rive/like_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide12 extends FlutterDeckSlideWidget {
  const Slide12()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/12',
            title: 'Implement with Flutter',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textAreaHeight = context.slideSize.height * 0.1;

    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 12,
        title: context.l10n.slide_12_title,
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AutoResizedText(
                          '1. ',
                          textAreaHeight: textAreaHeight,
                          style: context.isSmall
                              ? context.text.bodyLarge
                              : context.text.displayMedium,
                          alignment: Alignment.centerLeft,
                        ),
                        LinkText(
                          text: 'rive',
                          url: 'https://pub.dev/packages/rive',
                          textAreaHeight: textAreaHeight * 1.2,
                          style: context.isSmall
                              ? context.text.bodyLarge
                              : context.text.displayMedium,
                          alignment: Alignment.centerLeft,
                        ),
                        AutoResizedText(
                          context.l10n.slide_12_add_package,
                          textAreaHeight: textAreaHeight,
                          style: context.isSmall
                              ? context.text.bodyLarge
                              : context.text.displayMedium,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                    AutoResizedText(
                      context.l10n.slide_12_put_riv_file,
                      textAreaHeight: textAreaHeight,
                      style: context.text.displayMedium,
                      alignment: Alignment.centerLeft,
                    ),
                    AutoResizedText(
                      context.l10n.slide_12_add_pubspec,
                      textAreaHeight: textAreaHeight,
                      style: context.text.displayMedium,
                      alignment: Alignment.centerLeft,
                    ),
                    Row(
                      children: [
                        const CodeView(
                          code: pubspec,
                          widthFactor: 0.15,
                          heightFactor: 0.15,
                        ),
                        LikeButton(
                          width: context.slideSize.height * 0.3,
                          height: context.slideSize.height * 0.3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CGap(widthFactor: 0.02),
              const CodeView(
                code: _code,
                widthFactor: 0.5,
                heightFactor: 0.8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const _code = '''
class LikeButton extends HookWidget {
  const LikeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final stateMachineController = useRef<StateMachineController?>(null);
    // SMI = StateMachineInstance
    final pressed = useRef<SMIBool?>(null);

    return GestureDetector(
      onTap: () => pressed.value!.value = !pressed.value!.value,
      child: RiveAnimation.asset(
        'assets/rive/light_like.riv',
        onInit: (artboard) {
          // artboard から StateMachineController を取得
          stateMachineController.value = StateMachineController.fromArtboard(
            artboard,
            'LikeStateMachine',
          );
          // artboard に StateMachineController を紐付ける
          artboard.addController(stateMachineController.value!);
          // StateMachineController から SMIBool を取得
          pressed.value ??= stateMachineController.value!
              .findInput<bool>('Pressed')! as SMIBool;
        },
      ),
    );
  }
}
  ''';

  static const pubspec = '''
// pubspec.yaml
flutter:
  assets:
    - assets/rive/
''';
}
