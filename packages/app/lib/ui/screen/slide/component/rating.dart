import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rive/rive.dart';

class Rating extends HookWidget {
  const Rating({required this.width, required this.height, super.key});

  final double width;
  final double height;

  static const _stateMachineName = 'RatingStateMachine';

  // Rating
  static const _inputRating = 'Rating';

  @override
  Widget build(BuildContext context) {
    final stateMachineController = useRef<StateMachineController?>(null);
    final rating = useState<int>(0);

    return Column(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: Assets.rive.ratingStars.rive(
            onInit: (artboard) {
              stateMachineController.value =
                  StateMachineController.fromArtboard(
                artboard,
                _stateMachineName,
                onStateChange: (stateMachineName, stateName) {
                  if (stateName == '1_stars') {
                    debugPrint('1_stars');
                    rating.value = 1;
                  } else if (stateName == '2_stars') {
                    debugPrint('2_stars');
                    rating.value = 2;
                  } else if (stateName == '3_stars') {
                    debugPrint('3_stars');
                    rating.value = 3;
                  } else if (stateName == '4_stars') {
                    debugPrint('4_stars');
                    rating.value = 4;
                  } else if (stateName == '5_stars') {
                    debugPrint('5_stars');
                    rating.value = 5;
                  }
                  debugPrint('Rating: ${rating.value}');
                },
              );
              artboard.addController(stateMachineController.value!);
            },
          ),
        ),
        Text(
          'Rating: ${rating.value}',
          style: context.text.displaySmall,
        )
      ],
    );
  }
}
