import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/router/router_names.dart';
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
            context.goNamed(RouteNames.pageTwo);
          },
          child: const Text('go to page two'),
        ),
      ),
    );
  }
}
