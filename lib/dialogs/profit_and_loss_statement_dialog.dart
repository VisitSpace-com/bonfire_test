import 'package:flutter/material.dart';

import '../constants/globals.dart';

class ProfitAndLossStatementDialog extends StatelessWidget {
  const ProfitAndLossStatementDialog({super.key});

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ProfitAndLossStatementDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Globals.plDialog),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '売上高',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '営業利益',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '経常利益',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '当期純利益',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('保　存'),
            ),
          ],
        ),
      ),
    );
  }
}
