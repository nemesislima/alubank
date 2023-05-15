import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';

import '../../themes/theme_colors.dart';
import '../box_card.dart';
import '../color_dot.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints ( { Key? key } ) : super ( key: key );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
              'Pontos da conta:',
              style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: BoxCard (boxContent: _AccountPoints ()),
        ),
      ],
    );
  }
}

class _AccountPoints extends StatelessWidget {
  const _AccountPoints ( { Key? key } ) : super ( key: key );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pontos totais:'),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Objetivos:',
            style: TextStyle (
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row (
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.recentActivity['almostRed']),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text ('Entrega grátis: 15000pts'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row (
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: ColorDot(color: ThemeColors.recentActivity['almostBlue']),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text ('1 mês de streaming: 30000pts'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]
    );
  }
}