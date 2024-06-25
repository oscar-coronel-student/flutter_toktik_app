import 'package:flutter/material.dart';

class VideoBg extends StatelessWidget {

  const VideoBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(decoration: BoxDecoration())
    );
  }

}