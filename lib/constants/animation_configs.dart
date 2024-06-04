import 'package:bonfire/bonfire.dart';
import 'globals.dart';

class AnimationConfigs {
  AnimationConfigs._();

  static SimpleDirectionAnimation greenNinjaAnimation({
    required SpriteSheet spriteSheet,
  }) =>
      SimpleDirectionAnimation(
        idleDown: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 0)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runDown: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 0),
            spriteSheet.getSprite(1, 0),
            spriteSheet.getSprite(2, 0),
            spriteSheet.getSprite(3, 0),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
        idleUp: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 1)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runUp: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 1),
            spriteSheet.getSprite(1, 1),
            spriteSheet.getSprite(2, 1),
            spriteSheet.getSprite(3, 1),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
        idleLeft: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 2)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runLeft: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 2),
            spriteSheet.getSprite(1, 2),
            spriteSheet.getSprite(2, 2),
            spriteSheet.getSprite(3, 2),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
        idleRight: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 3)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runRight: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 3),
            spriteSheet.getSprite(1, 3),
            spriteSheet.getSprite(2, 3),
            spriteSheet.getSprite(3, 3),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
      );

  static SimpleDirectionAnimation bsSamuraiAnimation({
    required SpriteSheet spriteSheet,
  }) =>
      SimpleDirectionAnimation(
        idleDown: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 0)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runDown: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 0),
            spriteSheet.getSprite(1, 0),
            spriteSheet.getSprite(2, 0),
            spriteSheet.getSprite(3, 0),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
        idleUp: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 1)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runUp: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 1),
            spriteSheet.getSprite(1, 1),
            spriteSheet.getSprite(2, 1),
            spriteSheet.getSprite(3, 1),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
        idleLeft: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 2)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runLeft: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 2),
            spriteSheet.getSprite(1, 2),
            spriteSheet.getSprite(2, 2),
            spriteSheet.getSprite(3, 2),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
        idleRight: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 3)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runRight: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 3),
            spriteSheet.getSprite(1, 3),
            spriteSheet.getSprite(2, 3),
            spriteSheet.getSprite(3, 3),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
      );
  static SimpleDirectionAnimation plOkamiAnimation({
    required SpriteSheet spriteSheet,
  }) =>
      SimpleDirectionAnimation(
        idleDown: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 0)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runDown: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 0),
            spriteSheet.getSprite(1, 0),
            spriteSheet.getSprite(2, 0),
            spriteSheet.getSprite(3, 0),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
        idleUp: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 1)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runUp: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 1),
            spriteSheet.getSprite(1, 1),
            spriteSheet.getSprite(2, 1),
            spriteSheet.getSprite(3, 1),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
        idleLeft: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 2)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runLeft: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 2),
            spriteSheet.getSprite(1, 2),
            spriteSheet.getSprite(2, 2),
            spriteSheet.getSprite(3, 2),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
        idleRight: SpriteAnimation.variableSpriteList(
          [spriteSheet.getSprite(0, 3)],
          stepTimes: [Globals.spriteStepTime],
        ),
        runRight: SpriteAnimation.variableSpriteList(
          [
            spriteSheet.getSprite(0, 3),
            spriteSheet.getSprite(1, 3),
            spriteSheet.getSprite(2, 3),
            spriteSheet.getSprite(3, 3),
          ],
          stepTimes: [
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
            Globals.spriteStepTime,
          ],
        ),
      );
}
