import 'package:booking/models/hotel_model/hotel_model.dart';
import 'package:booking/screens/photo_carousel.dart';
import 'package:booking/widgets/address_section.dart';
import 'package:booking/widgets/price_section.dart';
import 'package:booking/widgets/rating_section.dart';
import 'package:flutter/material.dart';

class FirstBlocWidgets extends StatelessWidget {
  const FirstBlocWidgets(
      {super.key, required this.hotelInfo, required this.hotelName});
  final String hotelName;
  final HotelResponse hotelInfo;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
      child: Container(
        color: Colors.white,
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
              CreateAddressSection(
                  hotelAddress: hotelInfo.adress, hotelName: hotelName),
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
