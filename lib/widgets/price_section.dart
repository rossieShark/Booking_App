import 'package:booking/screens/hotel_page_main_content.dart';
import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';
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
        _PrePriceTextWidget(prePrice: prePrice, price: price),
        const SizedBox(
          width: 8,
        ),
        _PriceWidget(priceFor: priceFor)
      ],
    );
  }
}

class _PriceWidget extends StatelessWidget {
  const _PriceWidget({
    required this.priceFor,
  });

  final String priceFor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
      child: Text(priceFor.toLowerCase(),
          style: TextStyleService.headline2(
              color: AppColors.grey, fontweight: FontWeight.w400)),
    );
  }
}

class _PrePriceTextWidget extends StatelessWidget {
  const _PrePriceTextWidget({
    required this.prePrice,
    required this.price,
  });

  final String prePrice;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: Text('$prePrice${formatNumberWithSpace(price)}',
          style: TextStyleService.largeText()),
    );
  }
}
