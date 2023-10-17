import 'dart:math';

import 'package:booking/services/services_index.dart';
import 'package:flutter/material.dart';

class CreatePeculiaritiesSection extends StatelessWidget {
  final List<String> peculiarities;

  const CreatePeculiaritiesSection({
    Key? key,
    required this.peculiarities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        ((peculiarities.length + 1) / 2).ceil(),
        (columnIndex) {
          final start = columnIndex * 2;
          final end = (columnIndex + 1) * 2;
          final currentPeculiarities =
              peculiarities.sublist(start, min(end, peculiarities.length));
          return Row(
            children: currentPeculiarities.map((peculiarity) {
              return Container(
                padding: const EdgeInsets.only(right: 8, bottom: 8),
                color: AppColors.blueWhite,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(peculiarity,
                      style: TextStyleService.headline2(
                        color: AppColors.grey,
                      )),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
