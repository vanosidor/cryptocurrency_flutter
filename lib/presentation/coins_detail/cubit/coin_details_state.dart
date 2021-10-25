import 'package:cryptocurrency_flutter/domain/model/coin_details.dart';

class CoinDetailsState {
  final CoinDetails? coinDetail;
  final String message;
  final ScreenState screenState;

  const CoinDetailsState._(
      {this.coinDetail = null,
      this.message = '',
      this.screenState = ScreenState.loading});

  const CoinDetailsState.loading()
      : this._(coinDetail: null, screenState: ScreenState.loading);

  const CoinDetailsState.success(
    CoinDetails coinDetails,
  ) : this._(coinDetail: coinDetails, message: '', screenState: ScreenState.success);

  const CoinDetailsState.error(String message)
      : this._(message: message, screenState: ScreenState.error);
}

enum ScreenState { loading, error, success }
