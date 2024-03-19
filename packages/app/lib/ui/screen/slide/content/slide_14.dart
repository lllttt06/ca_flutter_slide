import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/l10n/l10n_ext.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/auto_resized_text.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/code_view.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide14 extends FlutterDeckSlideWidget {
  const Slide14()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/14',
            title: 'Tips 2-1',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.custom(
      builder: customSlideBuilder(
        pageNumber: 14,
        title: context.l10n.slide_13_title,
        builder: (context) => Padding(
          padding:
              EdgeInsets.symmetric(horizontal: context.slideSize.width * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: context.slideSize.width * 0.4,
                height: context.slideSize.height * 0.8,
                child: Column(
                  children: [
                    AutoResizedText(
                      context.l10n.slide_14_description,
                      textAreaHeight: context.slideSize.height * 0.3,
                      style: context.text.displayMedium,
                      alignment: Alignment.topLeft,
                    ),
                    const CodeView(
                      code: codeAfter,
                      widthFactor: 0.4,
                      heightFactor: 0.5,
                    ),
                  ],
                ),
              ),
              const CodeView(
                code: code1,
                widthFactor: 0.4,
                heightFactor: 0.8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static const code1 = '''
// use_init_state_machine_controller.dart
StateMachineController Function({
  required Artboard artboard,
  required String name,
  OnStateChange? onStateChange,
}) useInitStateMachineController({
  List<Object?> keys = const [],
}) {
  final riveController = useRef<StateMachineController?>(null);

  return useCallback(
    ({
      required Artboard artboard,
      required String name,
      OnStateChange? onStateChange,
    }) {
      if (riveController.value == null) {
        riveController.value = StateMachineController.fromArtboard(
          artboard,
          name,
          onStateChange: onStateChange,
        );
        artboard.addController(riveController.value!);
      }
      return riveController.value!;
    },
    keys,
  );
}
  ''';

  static const codeAfter = '''
final initStateMachineController = useInitStateMachineController();
// ...
Assets.rive.lightLike.rive(
  onInit: (artboard) {
    // この部分
    stateMachineController.value = initStateMachineController(
      artboard: artboard,
      name: 'LikeStateMachine',
    );
    pressed.value ??= stateMachineController.value!
        .findInput<bool>('Pressed')! as SMIBool;
  },
);
  ''';
}
