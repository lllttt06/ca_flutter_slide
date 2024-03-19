import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/l10n/l10n.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/citation_slide.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_1.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_10.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_11.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_12.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_13.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_14.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_15.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_16.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_17.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_2.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_3.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_4.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_5.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_6.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_7.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_8.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/slide_9.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SlideScreen extends HookWidget {
  const SlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      supportedLocales: L10n.supportedLocales,
      localizationsDelegates: L10n.localizationsDelegates,
      configuration: FlutterDeckConfiguration(
        controls: const FlutterDeckControlsConfiguration(
          shortcuts: FlutterDeckShortcutsConfiguration(
            toggleMarker: SingleActivator(
              LogicalKeyboardKey.keyM,
              control: true,
              meta: true,
            ),
            toggleNavigationDrawer: SingleActivator(
              LogicalKeyboardKey.period,
              control: true,
              meta: true,
            ),
          ),
        ),
        marker: const FlutterDeckMarkerConfiguration(
          color: Colors.cyan,
          strokeWidth: 8,
        ),
        progressIndicator: const FlutterDeckProgressIndicator.gradient(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.lightBlue],
          ),
          backgroundColor: Colors.black,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x9(),
          resolution: FlutterDeckResolution.fromWidth(context.screenSize.width),
        ),
        transition: const FlutterDeckTransition.fade(),
      ),
      slides: const [
        Slide1(),
        Slide2(),
        Slide3(),
        Slide4(),
        Slide5(),
        Slide6(),
        Slide7(),
        Slide8(),
        Slide9(),
        Slide10(),
        Slide11(),
        Slide12(),
        Slide13(),
        Slide14(),
        Slide15(),
        Slide16(),
        Slide17(),
        CitationSlide(),
      ],
    );
  }
}
