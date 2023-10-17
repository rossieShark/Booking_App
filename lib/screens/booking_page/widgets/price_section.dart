import 'package:booking/models/models_index.dart';
import 'package:booking/screens/hotel_page/hotel_page_index.dart';
import 'package:booking/services/services_index.dart';
import 'package:booking/widgets/widgets_index.dart';
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
    return BackgroundContainer(
      height: 156,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: totalPrices.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _CreateListViewContent(
                totalPrices: totalPrices,
                index: index,
              );
            }),
      ),
    );
  }
}

class _CreateListViewContent extends StatelessWidget {
  const _CreateListViewContent({
    required this.totalPrices,
    required this.index,
  });

  final List<PriceModel> totalPrices;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _TotalPriceName(totalPrices: totalPrices, index: index),
          _TotalPrice(totalPrices: totalPrices, index: index),
        ],
      ),
    );
  }
}

class _TotalPriceName extends StatelessWidget {
  const _TotalPriceName({
    required this.totalPrices,
    required this.index,
  });

  final List<PriceModel> totalPrices;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(totalPrices[index].name,
        style: TextStyleService.headline2(
            color: AppColors.grey, fontweight: FontWeight.w400));
  }
}

class _TotalPrice extends StatelessWidget {
  const _TotalPrice({
    required this.totalPrices,
    required this.index,
  });

  final List<PriceModel> totalPrices;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${formatNumberWithSpace(totalPrices[index].price)} ₽',
      style: TextStyleService.headline2(
        color: index == (totalPrices.length - 1)
            ? AppColors.blue
            : AppColors.black,
        fontweight: index == (totalPrices.length - 1)
            ? FontWeight.w600
            : FontWeight.w400,
      ),
    );
  }
}
