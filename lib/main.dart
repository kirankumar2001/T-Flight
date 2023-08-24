import 'package:flutter/material.dart';
import 'package:t_flight/presentation/booking/seat/select_seat.dart';
import 'package:t_flight/presentation/getstart/getstart_screen.dart';
import 'package:t_flight/presentation/main/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GetStart(),
    );
  }
}
