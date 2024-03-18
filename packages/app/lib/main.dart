import 'package:ca_flutter_slide/gen/fonts.gen.dart';
import 'package:ca_flutter_slide/ui/screen/slide/slide_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

late final HighlighterTheme highlightTheme;

void main() async {
  BindingBase.debugZoneErrorsAreFatal = true;
  WidgetsFlutterBinding.ensureInitialized();

  await Highlighter.initialize(['dart', 'yaml']);

  highlightTheme = await HighlighterTheme.loadDarkTheme();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final baseTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      useMaterial3: true,
      fontFamily: FontFamily.notoSans,
    );

    return MaterialApp(
      theme: baseTheme,
      darkTheme: baseTheme,
      builder: (context, child) => const SlideScreen(),
    );
  }
}
