import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class CreateAddressSection extends StatelessWidget {
  const CreateAddressSection({
    super.key,
    required this.hotelName,
    required this.hotelAddress,
  });

  final String hotelName;
  final String hotelAddress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: Text(hotelName, style: TextStyleService.headline1()),
        ),
        GestureDetector(
          onTap: () {
            print('address tapped');
          },
          child: Text(hotelAddress,
              style: TextStyleService.headline3(color: AppColors.blue)),
        ),
      ],
    );
  }
}
