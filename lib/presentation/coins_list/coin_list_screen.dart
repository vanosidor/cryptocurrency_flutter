import 'package:cryptocurrency_flutter/di/injection_container.dart';
import 'package:cryptocurrency_flutter/domain/model/coin.dart';
import 'package:cryptocurrency_flutter/presentation/coins_detail/coin_details_screen.dart';
import 'package:cryptocurrency_flutter/presentation/coins_list/cubit/coin_list_cubit.dart';
import 'package:cryptocurrency_flutter/presentation/coins_list/cubit/coin_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinListScreen extends StatelessWidget {
  const CoinListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Coins')),
      body: BlocProvider<CoinListCubit>(
          create: (_) => getIt()..fetchCoinList(), child: CoinsList()),
    );
  }
}

class CoinsList extends StatelessWidget {
  const CoinsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CoinListCubit>().state;

    switch (state.listState) {
      case ListState.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case ListState.error:
        return Center(
          child: Text(state.message),
        );
      case ListState.success:
        return ListView.builder(
            itemCount: state.coins.length,
            itemBuilder: (context, index) => CoinListItem(
                  coin: state.coins[index],
                  onTap: () =>
                      _navigateToCoinDetails(context, state.coins[index].id),
                ));
    }
  }

  void _navigateToCoinDetails(BuildContext context, String coinName) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CoinDetailsScreen(coinName: coinName),
    ));
  }
}

class CoinListItem extends StatelessWidget {
  final Coin coin;
  final VoidCallback onTap;

  const CoinListItem({required this.coin, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(onTap: onTap, title: Text(coin.name)),
    );
  }
}
