import 'package:flutter/material.dart';
import 'common.dart';

/// ブロック（Panelの集合体）のクラス
class Block {
  /// 設置状況
  PanelState _state = PanelState.Empty;

  /// ブロックの形状
  late List<List<int>> _shape;

  Block(List<List<int>> shape) {
    this._shape = shape;
  }

  /// 所定の座標を左上として、そこに設置が可能かどうか
  bool canPlaced(int x, int y) {
    return true;
  }

  /// ブロックを90°回転する
  void rotate(Direction direction) {
    if (direction == Direction.Left) {
    } else if (direction == Direction.Right) {}
  }
}

Draggable createBlock(List<List<int>> shape) {
  // TODO: ブロックの構成によって画像を調整する
  var blockImg = Container(
      margin: const EdgeInsets.all(1.0),
      color: Colors.blue,
      width: 400 / 14 * 2,
      height: 400 / 14 * 2,
      child: Column(children: <Widget>[
        Expanded(
          child: Container(
            child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  color: Colors.green,
                ),
              ),
            ]),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(1.0),
                  color: Colors.green,
                ),
              ),
            ]),
          ),
        ),
      ]));

  return Draggable(
    data: new Block(shape),
    onDragStarted: () {},
    onDraggableCanceled: (velocity, offset) {},
    onDragCompleted: () {},
    onDragEnd: (details) {},
    child: blockImg,
    feedback: blockImg,
    childWhenDragging: Icon(
      Icons.flag,
      color: Colors.black.withOpacity(0),
      size: 90,
    ),
  );
}
