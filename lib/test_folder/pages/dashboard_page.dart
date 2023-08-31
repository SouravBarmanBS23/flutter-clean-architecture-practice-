import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/router/router_names.dart';
import 'package:go_router/go_router.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DashBoardPage'),
      ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            context.goNamed(RouteNames.profilePage,queryParameters: {
              'greetings':'Welcome Sourav'
            });

          },
          child: const Text('go to profile page'),
        ),
      ),
    );
  }
}
