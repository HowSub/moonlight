import 'package:flutter/material.dart';
import 'package:login/core/routes/app_router.dart';

import 'package:login/core/theme.dart';

class Moonlight extends StatelessWidget {
  const Moonlight({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: appRouter, theme: darkTheme);
  }
}
