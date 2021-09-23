import 'Player.dart';

/// ゲームを管理するクラス
class GameManager {
  /// 参加しているプレイヤー
  /// 配列の並びがそのままプレイ順になる
  List<Player>? _players;

  /// 現在手番のプレイヤー
  int? _currentPlayerId;

  /// ゲーム終了フラグ
  bool _isFinishedGame = false;

  /// ターンを進め、次のプレイヤーに手番を回す
  void stepTurn() {}
}
