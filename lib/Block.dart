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
