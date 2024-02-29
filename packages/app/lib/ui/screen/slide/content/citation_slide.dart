import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CitationSlide extends FlutterDeckSlideWidget {
  const CitationSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/citation',
            header: FlutterDeckHeaderConfiguration(
              title: '引用',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(''),
            ],
          ),
        );
      },
    );
  }
}
