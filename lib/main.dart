import 'package:flutter/material.dart';
import 'package:jas_cuaca/presentation/pages/beranda.dart';
import 'package:jas_cuaca/util/global_style.dart';

void main() async {
  runApp(const MyApp());
}

RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jas Cuaca',
      theme: ThemeData.light().copyWith(
        colorScheme: kColorScheme,
      ),
      home: Beranda(),
    );
  }
}
