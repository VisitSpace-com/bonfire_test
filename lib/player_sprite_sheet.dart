import 'package:bonfire/bonfire.dart';

const ninjaIdleRight = 'assets/images/idle.png';
const ninjaWalkRight = 'assets/images/walk.png';

class PlayerSpriteSheet {
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        ninjaIdleRight,
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );

  static Future<SpriteAnimation> get walkRight => SpriteAnimation.load(
        ninjaWalkRight,
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );

  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
        idleRight: idleRight,
        runRight: walkRight,
      );
}
