import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            context.go('/two');
          },
          child: const Text('go to page two'),
        ),
      ),
    );
  }
}
