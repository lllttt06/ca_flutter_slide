import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/component/custom_slide_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Slide4 extends FlutterDeckSlideWidget {
  const Slide4()
      : super(
          configuration: const FlutterDeckSlideConfiguration(route: '/4'),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: customSlideBuilder(
        title: 'インタラクティブアニメーションの利点',
        builder: (context) => Padding(
          padding: EdgeInsets.only(bottom: context.slideSize.height * 0.1),
          child: AutoResizedText(
            '・特定の行動をユーザーに促せる \n・難しいことをわかりやすく直感的に説明できる \n・楽しいユーザー体験を提供できる',
            textAreaHeight: context.slideSize.height * 0.7,
            style: context.text.displayLarge?.copyWith(height: 2),
          ),
        ),
      ),
    );
  }
}
