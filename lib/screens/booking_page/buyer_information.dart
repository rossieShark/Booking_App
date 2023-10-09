import 'package:booking/screens/booking_page/email_text_field.dart';
import 'package:booking/screens/booking_page/phone_text_field.dart';
import 'package:booking/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CreateBuyerInformation extends StatelessWidget {
  const CreateBuyerInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 232,
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Информация о покупателе',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w500,
                      height: 26.4 / 22)),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                textField: PhoneTextField(),
                hintText: 'Номер телефона',
                errorText: null,
              ),
              SizedBox(
                height: 8,
              ),
              EmailTextField(),
              SizedBox(height: 8),
              Text(
                  'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
                  style: TextStyle(
                      color: Color.fromARGB(255, 130, 135, 150),
                      fontSize: 14,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w400,
                      height: 16.8 / 14))
            ],
          ),
        ));
  }
}
