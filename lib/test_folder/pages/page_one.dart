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
            String name = 'sourav';
            context.go('/one/three/$name');
          },
          child: const Text('go to page three'),
        ),
      ),
    );
  }
}
