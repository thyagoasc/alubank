import 'package:bank_home/components/sections/account_score.dart';
import 'package:flutter/material.dart';
import 'package:bank_home/components/sections/account_actions.dart';
import 'package:bank_home/components/sections/recent_activity.dart';
import 'package:bank_home/components/sections/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          AccountScore(),
        ],
      ),
    );
  }
}
