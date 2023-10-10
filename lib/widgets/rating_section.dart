import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class CreateRatingSection extends StatelessWidget {
  const CreateRatingSection(
      {super.key, required this.rating, required this.ratingName});

  final int rating;
  final String ratingName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 149,
        height: 29,
        color: AppColors.yellow.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(children: [
            const Icon(Icons.star, size: 15, color: AppColors.gold),
            Text("$rating $ratingName",
                style: TextStyleService.headline2(
                  color: AppColors.gold,
                )),
          ]),
        ),
      ),
    );
  }
}
