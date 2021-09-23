import 'Block.dart';

/// プレイヤーのクラス
class Player {
  /// 識別ID
  int? _playerId;

  /// プレイヤー名
  String? _playerName;

  /// 所持しているブロック
  List<Block>? _blocks;

  /// 自分のターンかどうか
  bool _isMyTurn = false;

  Player(int id, String name, List<Block> initBlocks) {
    this._playerId = id;
    this._playerName = name;
    this._blocks = initBlocks;
  }

  /// 指定した座標を左上として、ブロックを設置する
  void placeBlock(Block block, int x, int y) {
    // ブロック設置後、手番を終える
    finishTurn();
  }

  /// 自分の手番を終える
  void finishTurn() {}
}
