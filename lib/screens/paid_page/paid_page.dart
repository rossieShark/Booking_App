import 'dart:math';

import 'package:booking/booking_app.dart';
import 'package:booking/resources/resources.dart';
import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';

import 'package:booking/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaidPage extends StatelessWidget {
  const PaidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Заказ оплачен'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _CreateImageSection(),
                  SizedBox(
                    height: 32,
                  ),
                  _OrderStatusText(),
                  SizedBox(
                    height: 20,
                  ),
                  _OrderNumberText(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 101,
          ),
          _CreateAcceptButton(),
        ],
      ),
    );
  }
}

class _CreateAcceptButton extends StatelessWidget {
  const _CreateAcceptButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: AppColors.white,
          border:
              Border(top: BorderSide(width: 1, color: AppColors.lightBlue))),
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
    );
  }
}

class _OrderNumberText extends StatelessWidget {
  const _OrderNumberText();

  String randomNumber() {
    Random random = Random();
    final orderNumber = random.nextInt(900000) + 100000;
    return orderNumber.toString();
  }

  @override
  Widget build(BuildContext context) {
    final text =
        'Подтверждение заказа №${randomNumber()} может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.';
    return Padding(
      padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
      child: Text(
        text,
        style: TextStyleService.headline2(
          fontweight: FontWeight.w400,
          color: AppColors.grey,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _OrderStatusText extends StatelessWidget {
  const _OrderStatusText();
  static const text = 'Ваш заказ принят в работу';
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyleService.headline1(),
      textAlign: TextAlign.center,
    );
  }
}

class _CreateImageSection extends StatelessWidget {
  const _CreateImageSection();

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
