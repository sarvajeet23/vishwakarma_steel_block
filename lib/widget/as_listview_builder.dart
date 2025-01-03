import 'package:flutter/material.dart';

class CustomListViewBuilder extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final ScrollController? controller;
  final Axis scrollDirection;

  const CustomListViewBuilder({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
    this.controller,
    this.scrollDirection = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      controller: controller,
      scrollDirection: scrollDirection,
    );
  }
}
