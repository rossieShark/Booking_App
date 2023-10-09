import 'package:booking/screens/hotel_page_main_content.dart';
import 'package:flutter/material.dart';

class CreatePriceSection extends StatelessWidget {
  const CreatePriceSection({
    super.key,
    required this.price,
    required this.priceFor,
    this.prePrice = '',
  });

  final int price;
  final String prePrice;
  final String priceFor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
          child: Text(
            '$prePrice${formatNumberWithSpace(price)}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
          child: Text(
            priceFor.toLowerCase(),
            style: const TextStyle(
              color: Color.fromARGB(255, 130, 135, 150),
              fontSize: 16,
              fontFamily: 'SFPro',
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
