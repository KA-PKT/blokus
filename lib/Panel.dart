import 'common.dart';

/// 盤面のマス単位のクラス
class Panel {
  /// マスの状態（パネル設置済みか）
  PanelState _state = PanelState.Empty;

  /// マスにブロックを置いたプレイヤーのID
  int? _playerId;

  /// マスの状態を返す
  PanelState getState() {
    return this._state;
  }

  /// このマスにブロックを置いたプレイヤーのIDを返す
  int? getPlayerId() {
    return this._playerId;
  }

  /// マスの状態を更新する
  void update(PanelState panelState, int id) {
    this._state = panelState;
    this._playerId = id;
  }
}
