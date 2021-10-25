import 'package:cryptocurrency_flutter/domain/model/coin.dart';

class CoinListState {
  final List<Coin> coins;
  final String message;
  final ListState listState;

  const CoinListState._(
      {this.coins = const <Coin>[],
      this.message = '',
      this.listState = ListState.loading});

  const CoinListState.loading()
      : this._(coins: const <Coin>[], listState: ListState.loading);

  const CoinListState.success(
    List<Coin> coins,
  ) : this._(coins: coins, message: '', listState: ListState.success);

  const CoinListState.error(String message)
      : this._(message: message, listState: ListState.error);
}

enum ListState { loading, error, success }
