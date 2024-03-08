import 'package:auto_route/auto_route.dart';
import 'package:ca_flutter_slide/foundation/build_context_exe.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/interactive_animation_slide.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/rive_flutter_sample_slide.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/self_introduction_slide.dart';
import 'package:ca_flutter_slide/ui/screen/slide/content/title_slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class SlideScreen extends HookWidget {
  const SlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      configuration: FlutterDeckConfiguration(
        // background: const FlutterDeckBackgroundConfiguration(
        //   light: FlutterDeckBackground.solid(Color(0xFFB5FFFC)),
        //   dark: FlutterDeckBackground.solid(Color(0xFF16222A)),
        // ),
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
        footer: const FlutterDeckFooterConfiguration(showSlideNumbers: true),
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
          aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
          resolution: FlutterDeckResolution.fromWidth(context.screenSize.width),
        ),
        transition: const FlutterDeckTransition.fade(),
      ),
      slides: const [
        TitleSlide(),
        SelfIntroductionSlide(),
        InteractiveAnimationSlide1(),
        InteractiveAnimationSlide2(),
        RiveFlutterSampleSlide(),
      ],
    );
  }
}
