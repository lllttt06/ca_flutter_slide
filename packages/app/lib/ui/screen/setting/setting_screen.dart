import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ca_flutter_slide/ui/component/default_container.dart';

@RoutePage()
class SettingScreen extends HookWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      screenName: 'SettingScreen',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SettingScreen'),
        ),
        body: const Center(
          child: Text('This is SettingScreen'),
        ),
      ),
    );
  }
}
