import 'package:booking/app_logic/booking_bloc/booking_bloc.dart';
import 'package:booking/models/rooms_model/room_model.dart';
import 'package:booking/resources/resources.dart';
import 'package:booking/screens/booking_page/booking_page.dart';

import 'package:booking/screens/photo_carousel.dart';
import 'package:booking/services/ui_services/custom_text.dart';
import 'package:booking/widgets/app_colors.dart';
import 'package:booking/widgets/custom_button.dart';
import 'package:booking/widgets/peculiarities_list.dart';
import 'package:booking/widgets/price_section.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class RoomsCard extends StatelessWidget {
  final String hotelName;
  final String hotelAddress;
  final List<Rooms> roomsList;
  final int index;

  const RoomsCard(
      {super.key,
      required this.roomsList,
      required this.index,
      required this.hotelAddress,
      required this.hotelName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 539,
          color: AppColors.white,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  height: 257,
                  child:
                      CarouselWithIndicator(images: roomsList[index].images)),
              Text(
                roomsList[index].name,
                style: TextStyleService.headline1(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: CreatePeculiaritiesSection(
                    peculiarities: roomsList[index].peculiarities),
              ),
              IntrinsicWidth(
                child: Container(
                  height: 29,
                  color: AppColors.blue.withOpacity(0.1),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Подробнее о номере',
                          style: TextStyleService.headline2(
                              color: AppColors.blue)),
                      GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.asset(AppImages.forward,
                                  color: AppColors.blue))),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CreatePriceSection(
                  price: roomsList[index].price,
                  priceFor: roomsList[index].pricePer),
              CustomButton(
                  buttonText: 'Выбрать номер',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BlocProvider<BookingBloc>(
                            create: (_) => GetIt.I(),
                            child: BookingPage(
                              hotelAddress: hotelAddress,
                              hotelName: hotelName,
                            )),
                      ),
                    );
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
