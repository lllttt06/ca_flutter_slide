import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'citation_state.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
class CitationState extends _$CitationState {
  @override
  List<Citation> build() {
    return [];
  }

  void add(Citation citation) {
    state = state..add(citation);
  }

  void reset() {
    state = [];
  }
}

@immutable
class Citation {
  const Citation({required this.description, required this.url});

  final String description;
  final String url;
}
