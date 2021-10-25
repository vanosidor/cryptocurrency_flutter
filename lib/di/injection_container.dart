import 'package:cryptocurrency_flutter/data/remote/coin_repository_impl.dart';
import 'package:cryptocurrency_flutter/domain/repository/coin_repository.dart';
import 'package:cryptocurrency_flutter/domain/use_cases/get_coin.dart';
import 'package:cryptocurrency_flutter/domain/use_cases/get_coins.dart';
import 'package:cryptocurrency_flutter/presentation/coins_detail/cubit/coin_details_cubit.dart';
import 'package:cryptocurrency_flutter/presentation/coins_list/cubit/coin_list_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

Future<void> initInjectionContainer() async {
  // Cubit
  getIt.registerFactory(() => CoinListCubit(getIt()));
  getIt.registerFactory(() => CoinDetailsCubit(getIt()));

  // Use cases
  getIt.registerLazySingleton<GetCoinsUseCase>(() => GetCoinsUseCase(getIt()));
  getIt.registerLazySingleton<GetCoinDetailsUseCase>(
      () => GetCoinDetailsUseCase(getIt()));

  // Repository
  getIt
      .registerLazySingleton<CoinRepository>(() => CoinRepositoryImpl(getIt()));

  getIt.registerLazySingleton(() => http.Client());
}
