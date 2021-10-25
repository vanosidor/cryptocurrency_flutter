import 'package:cryptocurrency_flutter/di/injection_container.dart';
import 'package:cryptocurrency_flutter/presentation/coins_list/coin_list_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await initInjectionContainer();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const CoinListScreen(),
    );
  }
}
