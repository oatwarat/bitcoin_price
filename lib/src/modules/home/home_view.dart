import 'package:flutter/material.dart';
import 'home_view_model.dart';
import '../../data/models/bitcoin_price.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel viewModel;

  const HomeView({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bitcoin Price')),
      body: Center(
        child: FutureBuilder<void>(
          future: viewModel.fetchBitcoinPrice(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (viewModel.bitcoinPrice == null) {
              return Text('No data available');
            } else {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Updated: ${viewModel.bitcoinPrice!.time.updated}'),
                    SizedBox(height: 16),
                    Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('code',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('symbol',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('rate',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('description',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('rate_float',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        _buildCurrencyRow(viewModel.bitcoinPrice!.bpi['USD']),
                        _buildCurrencyRow(viewModel.bitcoinPrice!.bpi['GBP']),
                        _buildCurrencyRow(viewModel.bitcoinPrice!.bpi['EUR']),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text('Disclaimer: ${viewModel.bitcoinPrice!.disclaimer}'),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  TableRow _buildCurrencyRow(CurrencyData? data) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(data?.code ?? ''),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(data?.symbol ?? ''),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(data?.rate ?? ''),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(data?.description ?? ''),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(data?.rate_float.toString() ?? ''),
        ),
      ],
    );
  }
}
