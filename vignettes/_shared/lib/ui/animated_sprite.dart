import 'package:flutter/widgets.dart';
import 'package:shared/ui/sprite.dart';

class AnimatedSprite extends AnimatedWidget {
  final ImageProvider image;
  final int frameWidth;
  final int? frameHeight;

  const AnimatedSprite({
    super.key,
    required super.listenable,
    required this.image,
    required this.frameWidth,
    required Animation<double> animation,
    this.frameHeight,
  });

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Sprite(
      image: image,
      frameWidth: frameWidth,
      frameHeight: frameHeight,
      frame: animation.value,
    );
  }
}
