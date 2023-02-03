import 'package:bank_home/components/box_card.dart';
import 'package:bank_home/components/color_dot.dart';
import 'package:bank_home/components/content_division.dart';
import 'package:bank_home/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountScore extends StatelessWidget {
  const AccountScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 16.0,
            ),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const BoxCard(
            boxContent: _AccountScoreContent(),
          ),
        ],
      ),
    );
  }
}

class _AccountScoreContent extends StatelessWidget {
  const _AccountScoreContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: const Text('Pontos totais'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const ContentDivision(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: const Text('Objetivos'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 4.0,
                ),
                child: ColorDot(
                  color: ThemeColors.accountScore['deliver'],
                ),
              ),
              const Text(
                'Entrega grátis: 15000 pts',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 4.0,
                ),
                child: ColorDot(
                  color: ThemeColors.accountScore['streaming'],
                ),
              ),
              const Text(
                '1 mês de streaming: 3000 pts',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
