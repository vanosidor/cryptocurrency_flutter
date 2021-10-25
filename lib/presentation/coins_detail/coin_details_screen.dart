import 'package:cryptocurrency_flutter/di/injection_container.dart';
import 'package:cryptocurrency_flutter/domain/model/coin_details.dart';
import 'package:cryptocurrency_flutter/presentation/coins_detail/cubit/coin_details_cubit.dart';
import 'package:cryptocurrency_flutter/presentation/coins_detail/cubit/coin_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinDetailsScreen extends StatelessWidget {
  final String coinName;

  const CoinDetailsScreen({Key? key, required this.coinName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coinName)),
      body: BlocProvider<CoinDetailsCubit>(
        create: (_) => getIt()..getCoinDetails(coinName),
        child: const CoinDetailWidget(),
      ),
    );
  }
}

class CoinDetailWidget extends StatelessWidget {
  const CoinDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CoinDetailsCubit>().state;

    switch (state.screenState) {
      case ScreenState.loading:
        return const Center(child: CircularProgressIndicator());
      case ScreenState.error:
        return Center(child: Text(state.message));
      case ScreenState.success:
        return CoinDetailsWidget(coinDetails: state.coinDetail!);
    }
  }
}

class CoinDetailsWidget extends StatelessWidget {
  final CoinDetails coinDetails;

  const CoinDetailsWidget({Key? key, required this.coinDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(coinDetails.name);
  }
}
