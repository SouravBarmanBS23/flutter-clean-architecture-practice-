import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/router/router_names.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            context.goNamed(RouteNames.pageOne);
          },
          child: const Text('go to page one'
          ),
        ),
      ),
    );
  }
}
