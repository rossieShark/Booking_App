import 'package:booking/models/booking_model.dart/booking_model.dart';
import 'package:booking/models/price_model.dart';
import 'package:booking/screens/hotel_page_main_content.dart';
import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class PriceSection extends StatelessWidget {
  final BookingResponse bookingInfo;
  final int totalPrice;
  const PriceSection({
    required this.bookingInfo,
    required this.totalPrice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<PriceModel> totalPrices = [
      PriceModel(name: 'Тур', price: bookingInfo.tourPrice),
      PriceModel(name: 'Топливный сбор', price: bookingInfo.fuelCharge),
      PriceModel(name: 'Сервисный сбор', price: bookingInfo.serviceCharge),
      PriceModel(name: 'К оплате', price: totalPrice),
    ];
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
          height: 156,
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: totalPrices.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(totalPrices[index].name,
                            style: TextStyleService.headline2(
                                color: AppColors.grey,
                                fontweight: FontWeight.w400)),
                        Text(
                          '${formatNumberWithSpace(totalPrices[index].price)} ₽',
                          style: TextStyleService.headline2(
                            color: index == (totalPrices.length - 1)
                                ? AppColors.blue
                                : AppColors.black,
                            fontweight: index == (totalPrices.length - 1)
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )),
    );
  }
}
