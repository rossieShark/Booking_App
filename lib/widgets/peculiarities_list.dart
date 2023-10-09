import 'dart:math';

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
                color: const Color.fromARGB(255, 251, 251, 252),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    peculiarity,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w500,
                      height:
                          1.2, // You can use 1.2 for a line height of 19.2px
                      color: Color.fromARGB(255, 130, 135, 150),
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
