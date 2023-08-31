import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            context.go('/one');
          },
          child: const Text('go to page one'
          ),
        ),
      ),
    );
  }
}
