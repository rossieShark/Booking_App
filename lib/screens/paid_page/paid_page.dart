import 'dart:math';

import 'package:booking/booking_app.dart';
import 'package:booking/resources/resources.dart';
import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';

import 'package:booking/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaidPage extends StatelessWidget {
  const PaidPage({super.key});

  String randomNumber() {
    Random random = Random();
    final orderNumber = random.nextInt(900000) + 100000;
    return orderNumber.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Заказ оплачен'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 94,
                    width: 94,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.background,
                    ),
                    child: Image.asset(
                      AppImages.party,
                      height: 44,
                      width: 44,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Ваш заказ принят в работу',
                    style: TextStyleService.headline1(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
                    child: Text(
                      'Подтверждение заказа №${randomNumber()} может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                      style: TextStyleService.headline2(
                        fontweight: FontWeight.w400,
                        color: AppColors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 101,
          ),
          Container(
            height: 88,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: AppColors.white,
                border: Border(
                    top: BorderSide(width: 1, color: AppColors.lightBlue))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
              child: CustomButton(
                buttonText: 'Супер!',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const BookingApp()),
                    (route) => false,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
