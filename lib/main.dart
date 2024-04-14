import 'package:flutter/material.dart';

import 'tax_office.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Yourtory Demo',
      debugShowCheckedModeBanner: false,
      home: TaxOffice(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Finance RPG')));
    // body: const TaxOffice());
  }
}
