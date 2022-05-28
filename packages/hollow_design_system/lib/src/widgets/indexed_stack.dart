// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class AppIndexedStack extends StatefulWidget {
  const AppIndexedStack({
    Key? key,
    required this.index,
    required this.children,
    this.duration = const Duration(
      milliseconds: 800,
    ),
  }) : super(key: key);

  final int index;
  final List<Widget> children;
  final Duration duration;
  
  @override
  State<AppIndexedStack> createState() => _AppIndexedStackState();
}

class _AppIndexedStackState extends State<AppIndexedStack>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void didUpdateWidget(AppIndexedStack oldWidget) {
    if (widget.index != oldWidget.index) {
      _controller.forward(from: 0.0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: IndexedStack(
        index: widget.index,
        children: widget.children,
      ),
    );
  }
}
