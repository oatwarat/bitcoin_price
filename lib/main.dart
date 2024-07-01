import 'package:flutter/material.dart';
import 'src/modules/home/home_view.dart';
import 'src/modules/home/home_view_model.dart';
import 'src/data/services/bitcoin_service.dart';

void main() {
  final bitcoinService = BitcoinService();
  final homeViewModel = HomeViewModel(bitcoinService);

  runApp(MyApp(homeViewModel: homeViewModel));
}

class MyApp extends StatelessWidget {
  final HomeViewModel homeViewModel;

  const MyApp({Key? key, required this.homeViewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bitcoin Price',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(viewModel: homeViewModel),
    );
  }
}
