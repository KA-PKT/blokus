import 'Panel.dart';

/// 盤面のクラス
class Board {
  /// 盤面の横のマス数
  final int _width = 8;

  /// 盤面の縦のマス数
  final int _height = 8;

  /// 1マスごとのPanel
  late List<List<Panel>> _panel;

  Board() {
    this._panel = <List<Panel>>[];
    for (var i = 0; i < this._width; i++) {
      this._panel[i] = <Panel>[];
    }
  }

  /// 指定された座標のPanelの状態を返す
  Panel getPanel(int x, int y) {
    return this._panel[x][y];
  }
}
