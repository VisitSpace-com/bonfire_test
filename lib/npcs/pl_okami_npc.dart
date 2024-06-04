import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/animation_configs.dart';
import '../constants/globals.dart';
import '../dialogs/profit_and_loss_statement_dialog.dart';
import '../sprite_sheets/green_ninja_sprite_sheet.dart';
import '../sprite_sheets/pl_okami_sprite_sheet.dart';

class PlOkamiNpc extends SimpleNpc with TapGesture, Lighting, RandomMovement {
  bool _observed = false;
  late TextPaint _textPaint;

  PlOkamiNpc({
    required super.position,
    required SpriteSheet spriteSheet,
  }) : super(
          size: Vector2(Globals.playerSize, Globals.playerSize),
          speed: 50,
          initDirection: Direction.left,
          animation:
              AnimationConfigs.plOkamiAnimation(spriteSheet: spriteSheet),
        ) {
    _textPaint = TextPaint(
      style: const TextStyle(
        color: Colors.white,
        fontSize: Globals.playerSize / 2,
      ),
    );
    setupLighting(
      LightingConfig(
        radius: width * 2,
        blurBorder: width * 2,
        color: Colors.yellow.withOpacity(0.1),
      ),
    );
  }

  @override
  Future<void> onLoad() {
    add(RectangleHitbox(size: size));
    return super.onLoad();
  }

  @override
  void onTap() {
    _showDialogTalk();
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    if (_observed) {
      _textPaint.render(
        canvas,
        'PL Okami',
        Vector2(-30, -25),
      );
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    seeAndMoveToPlayer(
      closePlayer: (player) {},
      radiusVision: Globals.radiusVision,
      observed: () {
        if (!_observed) {
          _observed = true;
        }
      },
      notObserved: () {
        _observed = false;
        runRandomMovement(
          dt,
          // speed: 25,
          maxDistance: Globals.observeMaxDistance,
          minDistance: Globals.observeMinDistance,
        );
        return false;
      },
    );
  }

  void _showDialogTalk() {
    gameRef.camera.moveToTargetAnimated(
        target: this,
        zoom: 2,
        onComplete: () {
          TalkDialog.show(
            gameRef.context,
            [
              _speak(text: '赤字とはすなわち、「死」じゃ。\nお主、損益計算書はどうなっておる？', isHero: false),
              _speak(text: '死んでは、ないです。。。', isHero: true),
              _speak(text: 'ほう。なら、私が見てあげよう。\nPLをお出し。', isHero: false),
              _speak(text: 'お、お願いします。', isHero: true),
            ],
            logicalKeyboardKeysToNext: [
              LogicalKeyboardKey.space,
              LogicalKeyboardKey.enter,
            ],
            onClose: () {
              gameRef.camera.moveToPlayerAnimated(zoom: 1);
              ProfitAndLossStatementDialog.show(gameRef.context);
            },
          );
        });
  }

  Say _speak({
    required String text,
    required bool isHero,
  }) =>
      Say(
        text: [
          TextSpan(text: text),
        ],
        person: SizedBox(
          height: Globals.dialogBox,
          width: Globals.dialogBox,
          child: isHero
              ? GreenNinjaSpriteSheet.spriteSheet.getSprite(0, 0).asWidget()
              : PlOkamiSpriteSheet.spriteSheet.getSprite(0, 0).asWidget(),
        ),
        personSayDirection:
            isHero ? PersonSayDirection.LEFT : PersonSayDirection.RIGHT,
      );
}
