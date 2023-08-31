import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/router/router_names.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required  this.greet});
   final String? greet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Profile Page $greet'),
      ),
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
               context.goNamed(RouteNames.dashboardPage);
          },
          child: const Text('go to dash-board'),
        ),
      ),
    );
  }
}
