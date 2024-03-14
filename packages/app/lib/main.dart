import 'package:ca_flutter_slide/l10n/l10n.dart';
import 'package:ca_flutter_slide/route/app_route.dart';
import 'package:ca_flutter_slide/state/citation_state.dart';
import 'package:ca_flutter_slide/ui/screen/slide/slide_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

late final Highlighter dartLightHighlighter;
late final Highlighter dartDarkHighlighter;

void main() async {
  BindingBase.debugZoneErrorsAreFatal = true;
  WidgetsFlutterBinding.ensureInitialized();

  await Highlighter.initialize(['dart']);

  final lightTheme = await HighlighterTheme.loadLightTheme();
  dartLightHighlighter = Highlighter(
    language: 'dart',
    theme: lightTheme,
  );

  final darkTheme = await HighlighterTheme.loadDarkTheme();
  dartDarkHighlighter = Highlighter(
    language: 'dart',
    theme: darkTheme,
  );

  runApp(const ProviderScope(child: SlideScreen()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final citation = ref.read(citationStateProvider);

    debugPrint('citation: $citation');

    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      supportedLocales: L10n.supportedLocales,
      localizationsDelegates: L10n.localizationsDelegates,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
