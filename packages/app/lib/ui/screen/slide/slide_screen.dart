import 'package:auto_route/auto_route.dart';
import 'package:ca_flutter_slide/ui/component/default_container.dart';
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
    return DefaultContainer(
      screenName: 'SlideScreen',
      child: FlutterDeckApp(
        configuration: FlutterDeckConfiguration(
          background: const FlutterDeckBackgroundConfiguration(
            light: FlutterDeckBackground.solid(Color(0xFFB5FFFC)),
            dark: FlutterDeckBackground.solid(Color(0xFF16222A)),
          ),
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
          footer: const FlutterDeckFooterConfiguration(
            showSlideNumbers: true,
            widget: FlutterLogo(),
          ),
          marker: const FlutterDeckMarkerConfiguration(
            color: Colors.cyan,
            strokeWidth: 8,
          ),
          progressIndicator: const FlutterDeckProgressIndicator.gradient(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.pink, Colors.purple],
            ),
            backgroundColor: Colors.black,
          ),
          slideSize: FlutterDeckSlideSize.fromAspectRatio(
            aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
            resolution: const FlutterDeckResolution.fromWidth(1440),
          ),
          transition: const FlutterDeckTransition.fade(),
        ),
        slides: const [
          TitleSlide(),
          SelfIntroductionSlide(),
        ],
      ),
    );
  }
}
