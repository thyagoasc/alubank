import 'package:bank_home/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        16.0,
        83.0,
        16.0,
        16.0,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.gradientPurple,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(
            10.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text.rich(
                TextSpan(
                  text: 'R\$ ',
                  children: <TextSpan>[
                    TextSpan(
                      text: '1.587,34',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              const Text(
                'Saldo disponível',
              )
            ],
          ),
          const Icon(
            Icons.account_circle,
            size: 42.0,
          ),
        ],
      ),
    );
  }
}
