// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  double? height;
  double? white;
  Color? color;
  Widget? child;
  Decoration? decoration;
  MyContainer(
      {super.key,
      this.height,
      this.color,
      this.white,
      this.child,
      this.decoration});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.white,
      color: widget.color,
      decoration: widget.decoration,
      child: widget.child,
    );
  }
}
