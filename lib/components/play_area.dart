import 'dart:async';

import 'package:brick_game/src/brick_breaker.dart';
import 'package:flame/collisions.dart'; // Add this import
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class PlayArea extends RectangleComponent with HasGameReference<BrickBreaker> {
  PlayArea()
      : super(
          paint: Paint()..color = Color.fromARGB(255, 47, 46, 43),
          children: [RectangleHitbox()], // Add this parameter
        );

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(game.width, game.height);
  }
}
