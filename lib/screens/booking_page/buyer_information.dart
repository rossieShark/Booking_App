import 'package:booking/screens/booking_page/text_fields/email_text_field.dart';
import 'package:booking/screens/booking_page/text_fields/phone_text_field.dart';
import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';

import 'package:flutter/material.dart';

class CreateBuyerInformation extends StatelessWidget {
  const CreateBuyerInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 232,
        color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Информация о покупателе',
                style: TextStyleService.headline1(),
              ),
              const SizedBox(
                height: 20,
              ),
              const PhoneTextField(
                labelText: 'Номер телефона',
              ),
              const SizedBox(
                height: 8,
              ),
              const EmailTextField(
                labelText: 'Почта',
              ),
              const SizedBox(height: 8),
              Text(
                'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
                style: TextStyleService.headline3(
                  color: AppColors.grey,
                ),
              )
            ],
          ),
        ));
  }
}
