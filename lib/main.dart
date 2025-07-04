import 'package:flutter/material.dart';
import 'package:portfolio/providers/current_state.dart';
import 'package:portfolio/view/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CurrentState())],
      child: MaterialApp(
        title: 'Portfolio',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
