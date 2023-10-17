import 'package:booking/app_logic/index.dart';
import 'package:booking/models/models_index.dart';
import 'package:booking/resources/resources.dart';
import 'package:booking/screens/booking_page/booking_page_index.dart';
import 'package:booking/screens/hotel_page/hotel_page_index.dart';
import 'package:booking/screens/rooms_info_page/rooms_info_page_index.dart';
import 'package:booking/services/services_index.dart';
import 'package:booking/widgets/widgets_index.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class RoomsCard extends StatelessWidget {
  final List<Rooms> roomsList;
  final int index;

  const RoomsCard({super.key, required this.roomsList, required this.index});
  @override
  Widget build(BuildContext context) {
    final name = context
        .findAncestorStateOfType<RoomsInformationPageState>()
        ?.widget
        .hotelName;

    final address = context
        .findAncestorStateOfType<RoomsInformationPageState>()
        ?.widget
        .hotelAddress;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: BackgroundContainer(
        height: 539,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                height: 257,
                child: CarouselWithIndicator(images: roomsList[index].images)),
            _RoomsTitle(roomsList: roomsList, index: index),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: CreatePeculiaritiesSection(
                  peculiarities: roomsList[index].peculiarities),
            ),
            const _AdditionalInformationButton(),
            const SizedBox(
              height: 16,
            ),
            CreatePriceSection(
                price: roomsList[index].price,
                priceFor: roomsList[index].pricePer),
            _ChooseRoomButton(address: address, name: name)
          ]),
        ),
      ),
    );
  }
}

class _RoomsTitle extends StatelessWidget {
  const _RoomsTitle({
    required this.roomsList,
    required this.index,
  });

  final List<Rooms> roomsList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      roomsList[index].name,
      style: TextStyleService.headline1(),
    );
  }
}

class _AdditionalInformationButton extends StatelessWidget {
  const _AdditionalInformationButton();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: 29,
        color: AppColors.blue.withOpacity(0.1),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text('Подробнее о номере',
                style: TextStyleService.headline2(color: AppColors.blue)),
            GestureDetector(
                onTap: () {},
                child: SizedBox(
                    width: 24,
                    height: 24,
                    child:
                        Image.asset(AppImages.forward, color: AppColors.blue))),
          ],
        ),
      ),
    );
  }
}

class _ChooseRoomButton extends StatelessWidget {
  const _ChooseRoomButton({
    required this.address,
    required this.name,
  });

  final String? address;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        buttonText: 'Выбрать номер',
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BlocProvider<BookingBloc>(
                  create: (_) => GetIt.I(),
                  child: BookingPage(
                    hotelAddress: address ?? "",
                    hotelName: name ?? "",
                  )),
            ),
          );
        });
  }
}
