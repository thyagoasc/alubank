import 'package:bank_home/components/box_card.dart';
import 'package:bank_home/components/color_dot.dart';
import 'package:bank_home/components/content_division.dart';
import 'package:bank_home/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(
        16.0,
      ),
      child: BoxCard(
        boxContent: _RecentActivityContent(),
      ),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 4.0,
                  ),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['spent'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Saída',
                    ),
                    Text(
                      'R\$ 3.475,11',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 4.0,
                  ),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['income'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Entrada',
                    ),
                    Text(
                      'R\$ 5.062,45',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 16.0,
            bottom: 8.0,
          ),
          child: Text(
            'Limite de gastos R\$ 587,34',
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              5.0,
            ),
          ),
          clipBehavior: Clip.hardEdge,
          child: const LinearProgressIndicator(
            value: 0.9,
            minHeight: 8.0,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: ContentDivision(),
        ),
        const Text(
          'Esse mês você gastou R\$ 1.500,00 com jogos. Tente abaixar esse custo!',
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Diga-me como!',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        )
      ],
    );
  }
}
