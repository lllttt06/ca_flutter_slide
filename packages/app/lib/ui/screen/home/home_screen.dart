import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yakyulog/ui/component/default_container.dart';

@RoutePage()
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      screenName: 'HomeScreen',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreen'),
        ),
        body: const Center(
          child: Text('This is HomeScreen'),
        ),
      ),
    );
  }
}
