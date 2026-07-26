import 'package:flutter/material.dart';
import 'package:login/features/home/view/widgets/data_text.dart';

final AppBar homeAppBar = AppBar(
  leading: dateText(),
  leadingWidth: 200,
  backgroundColor: Colors.transparent,
  elevation: 0,
  actions: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.account_circle, size: 40, color: Colors.white),
    ),
  ],
);
