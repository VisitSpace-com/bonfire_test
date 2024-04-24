import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/animation_configs.dart';
import '../constants/globals.dart';
import '../sprite_sheets/green_ninja_sprite_sheet.dart';
import '../sprite_sheets/bs_samurai_sprite_sheet.dart';

class BsSamuraiNpc extends SimpleNpc with TapGesture {
  bool _observed = false;
  late TextPaint _textPaint;

  BsSamuraiNpc({
    required super.position,
    required SpriteSheet spriteSheet,
  }) : super(
          size: Vector2(Globals.playerSize, Globals.playerSize),
          speed: 150,
          initDirection: Direction.down,
          animation:
              AnimationConfigs.bsSamuraiAnimation(spriteSheet: spriteSheet),
        ) {
    _textPaint = TextPaint(
      style: const TextStyle(
        color: Colors.white,
        fontSize: Globals.playerSize / 2,
      ),
    );
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
        'BSサムライ',
        Vector2(position.x, position.y),
      );
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    seeAndMoveToPlayer(
      // closePlayer: (player) {},
      radiusVision: Globals.radiusVision,
      observed: () {
        if (!_observed) {
          _observed = true;
          // return _observed;
        }
      },
      notObserved: () {
        _observed = false;
        return false;
      },
    );
  }

  void _showDialogTalk() {
    gameRef.camera.moveToTargetAnimated(
        target: this,
        zoom: 2,
        onComplete: () {
          TalkDialog.show(gameRef.context, [
            _speak(
                text: '会社経営をするとは、貸借対照表を知るということだ。\nお主は持っておるか？', isHero: false),
            _speak(text: 'はい！貸借対照表あります。', isHero: true),
            _speak(text: 'お主のBS、ワシが分析して差し上げよう。', isHero: false),
            _speak(text: 'お願いします！', isHero: true),
          ], logicalKeyboardKeysToNext: [
            LogicalKeyboardKey.space,
            LogicalKeyboardKey.enter,
          ], onClose: () {
            gameRef.camera.moveToPlayerAnimated(zoom: 1);
          });
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
              : BsSamuraiSpriteSheet.spriteSheet.getSprite(0, 0).asWidget(),
        ),
        personSayDirection:
            isHero ? PersonSayDirection.LEFT : PersonSayDirection.RIGHT,
      );
}
