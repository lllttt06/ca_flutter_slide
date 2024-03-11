import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/like_button.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RiveFlutterSampleSlide extends FlutterDeckSlideWidget {
  const RiveFlutterSampleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rive-flutter-sample',
            header: FlutterDeckHeaderConfiguration(
              title: 'Flutter での活用事例',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Table(
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: Column(
                      children: [
                        Text(
                          'いいねボタン',
                          style: context.text.displayMedium,
                        ),
                        const LikeButton(width: 200, height: 200),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Column(
                      children: [
                        Text(
                          '評価',
                          style: context.text.displayMedium,
                        ),
                        const Rating(width: 400, height: 200),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          // child: Column(
          //   children: [
          //     Row(
          //       children: [
          //         Text(
          //           'いいねボタン',
          //           style: context.text.displayMedium,
          //         ),
          //         const LikeButton(width: 200, height: 200),
          //       ],
          //     ),
          //     Row(
          //       children: [
          //         Text(
          //           '評価',
          //           style: context.text.displayMedium,
          //         ),
          //         const Rating(width: 400, height: 200),
          //       ],
          //     ),
          //   ],
          // ),
        );
      },
    );
  }
}
