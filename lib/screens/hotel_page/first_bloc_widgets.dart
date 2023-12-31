import 'package:booking/models/models_index.dart';
import 'package:booking/screens/hotel_page/hotel_page_index.dart';
import 'package:booking/services/services_index.dart';
import 'package:booking/widgets/widgets_index.dart';
import 'package:flutter/material.dart';

class FirstBlocWidgets extends StatelessWidget {
  const FirstBlocWidgets({super.key, required this.hotelInfo});

  final HotelResponse hotelInfo;

  @override
  Widget build(BuildContext context) {
    final name =
        context.findAncestorStateOfType<HotelPageMainContentState>()?.hotelName;
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
      child: Container(
        color: AppColors.white,
        height: 530 - 101,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 257,
                child: CarouselWithIndicator(
                  images: hotelInfo.images,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CreateRatingSection(
                rating: hotelInfo.rating,
                ratingName: hotelInfo.ratingName,
              ),
              const SizedBox(
                height: 8,
              ),
              CreateAddressSection(
                hotelAddress: hotelInfo.adress,
                hotelName: name ?? "",
              ),
              const SizedBox(
                height: 16,
              ),
              CreatePriceSection(
                price: hotelInfo.minPrice,
                priceFor: hotelInfo.priceForIt,
                prePrice: 'от ',
              )
            ],
          ),
        ),
      ),
    );
  }
}
