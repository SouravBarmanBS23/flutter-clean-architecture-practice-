import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Page Three $id'),
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
