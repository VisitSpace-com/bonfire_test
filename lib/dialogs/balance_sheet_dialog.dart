import 'package:flutter/material.dart';

import '../constants/globals.dart';

class BalanceSheetDialog extends StatelessWidget {
  const BalanceSheetDialog({super.key});

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const BalanceSheetDialog();
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
            Image.asset(Globals.bsDialog),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '現金及び預金',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '売掛金',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '短期貸付金',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '長期貸付金',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '資産の部合計',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '流動負債',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '固定負債',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '資本金',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextFormField(
              decoration: const InputDecoration(
                labelText: '利益剰余金',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), // Space
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('保存'),
            ),
            const SizedBox(height: 20), // Space
          ],
        ),
      ),
    );
  }
}
