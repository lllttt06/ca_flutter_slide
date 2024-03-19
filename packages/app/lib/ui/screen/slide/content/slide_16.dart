import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/code_view.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_gap.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/link_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide16 extends FlutterDeckSlideWidget {
  const Slide16()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/16',
            title: '実装の tips 3',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final textAreaHeight = context.slideSize.height * 0.1;

    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 16,
        title: '実装の tips',
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Column(
            children: [
              Row(
                children: [
                  AutoResizedText(
                    '3. ',
                    textAreaHeight: textAreaHeight,
                    style: context.text.displayMedium,
                    alignment: Alignment.centerLeft,
                  ),
                  LinkText(
                    text: 'RepaintBoundary',
                    url:
                        'https://api.flutter.dev/flutter/widgets/RepaintBoundary-class.html',
                    textAreaHeight: textAreaHeight,
                    style: context.text.displayMedium,
                    alignment: Alignment.centerLeft,
                  ),
                  AutoResizedText(
                    ' で不要な Repaint を抑える',
                    textAreaHeight: textAreaHeight,
                    style: context.text.displayMedium,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              AutoResizedText(
                '  再描画のタイミングを切り分けパフォーマンスを向上させる',
                textAreaHeight: textAreaHeight,
                style: context.text.displayMedium,
                alignment: Alignment.centerLeft,
              ),
              const CGap(heightFactor: 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CodeView(
                    code: code1,
                    widthFactor: 0.45,
                    heightFactor: 0.43,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.color.inversePrimary,
                        width: 2,
                      ),
                      color: const Color(0xff1E1E1E),
                    ),
                    child: Assets.images.screenshot.image(
                      fit: BoxFit.cover,
                      width: context.slideSize.width * 0.45,
                      height: context.slideSize.height * 0.43,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const code1 = '''
RepaintBoundary(
  child: Assets.rive.lightLike.rive(
    onInit: (artboard) {
      stateMachineController.value = initStateMachineController(
        artboard: artboard,
        name: 'LikeStateMachine',
      );
      pressed.value ??= stateMachineController.value!.findInputBool('Pressed');
    },
  ),
);
  ''';

  static const code2 = '''
// rive_ext.dart
extension StateMachineControllerExt on StateMachineController {
  // SMI = State Machine Instance
  SMIBool findInputBool(String name) => findInput<bool>(name)! as SMIBool;
  SMINumber findInputNumber(String name) =>
      findInput<double>(name)! as SMINumber;
  SMITrigger findInputTrigger(String name) =>
      findInput<bool>(name)! as SMITrigger;
}
  ''';
}
