import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Container dateText() {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
        child: StreamBuilder<DateTime>(
          stream: Stream.periodic(
            const Duration(seconds: 10),
            (_) => DateTime.now(),
          ),
          initialData: DateTime.now(),
          builder: (context, AsyncSnapshot<DateTime> snapshot) {
            final DateTime now = snapshot.data ?? DateTime.now();
            final formattedDate = DateFormat('EEEE, d').format(now);

            return Text(formattedDate, style: TextStyle(fontSize: 20));
          },
        ),
      );
  }