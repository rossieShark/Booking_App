import 'dart:math';

import 'package:booking/main.dart';

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
                      color: Color.fromARGB(255, 246, 246, 249),
                    ),
                    child: Image.asset(
                      'assets/images/party.png',
                      height: 44,
                      width: 44,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Ваш заказ принят в работу',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      height: 26.4 / 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(23, 0, 23, 0),
                    child: Text(
                      'Подтверждение заказа №${randomNumber()} может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 130, 135, 150),
                        height: 19.2 / 16,
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
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                        width: 1, color: Color.fromARGB(255, 232, 233, 236)))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
              child: CustomButton(
                buttonText: 'Супер!',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
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
