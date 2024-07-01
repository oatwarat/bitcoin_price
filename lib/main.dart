import 'package:flutter/material.dart';
import 'src/modules/home/home_view.dart';
import 'src/modules/home/home_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bitcoin Price App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(viewModel: HomeViewModel()),
    );
  }
}
