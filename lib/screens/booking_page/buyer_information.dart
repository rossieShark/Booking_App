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
        color: AppColors.black,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Информация о покупателе',
                style: TextStyleService.headline1(),
              ),
              SizedBox(
                height: 20,
              ),
              PhoneTextField(
                labelText: 'Номер телефона',
              ),
              SizedBox(
                height: 8,
              ),
              EmailTextField(
                labelText: 'Почта',
              ),
              SizedBox(height: 8),
              Text(
                'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
                style: TextStyleService.headline1(
                  color: AppColors.grey,
                ),
              )
            ],
          ),
        ));
  }
}
