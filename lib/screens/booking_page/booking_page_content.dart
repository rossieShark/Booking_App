import 'package:booking/app_logic/controller_provider.dart';
import 'package:booking/app_logic/tourist_provider/tourist_provider.dart';
import 'package:booking/models/booking_info_table_model.dart';
import 'package:booking/models/booking_model.dart/booking_model.dart';

import 'package:booking/screens/booking_page/buyer_information.dart';

import 'package:booking/screens/booking_page/information_table.dart';
import 'package:booking/screens/booking_page/price_section.dart';

import 'package:booking/screens/booking_page/tourist_list.dart';
import 'package:booking/screens/hotel_page_main_content.dart';
import 'package:booking/screens/paid_page/paid_page.dart';

import 'package:booking/widgets/address_section.dart';
import 'package:booking/widgets/custom_button.dart';

import 'package:booking/widgets/rating_section.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookingPageContent extends StatelessWidget {
  final BookingResponse bookingInfo;
  final String hotelName;
  final String hotelAddress;
  const BookingPageContent(
      {super.key,
      required this.bookingInfo,
      required this.hotelAddress,
      required this.hotelName});

  int _calculateTotalPrice() {
    return bookingInfo.tourPrice +
        bookingInfo.fuelCharge +
        bookingInfo.tourPrice;
  }

  @override
  Widget build(BuildContext context) {
    final controllerProvider =
        Provider.of<TextFieldControllerProvider>(context, listen: false);
    final price = formatNumberWithSpace(_calculateTotalPrice());

    final touristProvider = Provider.of<TouristProvider>(context);
    final List<BookingIngoTable> tableContent = [
      BookingIngoTable(name: 'Вылет из', description: bookingInfo.departure),
      BookingIngoTable(
          name: 'Страна, город', description: bookingInfo.arrivalCountry),
      BookingIngoTable(
          name: 'Даты',
          description:
              '${bookingInfo.tourDateStart} - ${bookingInfo.tourDateStop}'),
      BookingIngoTable(
          name: 'Кол-во ночей',
          description: bookingInfo.numberOfNights.toString()),
      BookingIngoTable(name: 'Отель', description: hotelName),
      BookingIngoTable(name: 'Номер', description: bookingInfo.room),
      BookingIngoTable(name: 'Питание', description: bookingInfo.nutrition),
    ];
    return ListView(padding: EdgeInsets.zero, children: [
      const SizedBox(height: 8),
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.white,
          height: 120,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CreateRatingSection(
                  rating: bookingInfo.horating,
                  ratingName: bookingInfo.ratingName,
                ),
                CreateAddressSection(
                  hotelAddress: hotelAddress,
                  hotelName: hotelName,
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      CreateInformationTable(tableContent: tableContent),
      const SizedBox(
        height: 8,
      ),
      const CreateBuyerInformation(),
      const SizedBox(
        height: 8,
      ),
      const TouristListScreen(),
      AddTouristWidget(touristProvider: touristProvider),
      const SizedBox(
        height: 8,
      ),
      PriceSection(
        bookingInfo: bookingInfo,
        totalPrice: _calculateTotalPrice(),
      ),
      const SizedBox(
        height: 8,
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
                buttonText: 'Oплатить $price ₽',
                onPressed: () {
                  if (controllerProvider.areAllFieldsFilled() &&
                      !controllerProvider.isEmpty()) {
                    // All fields are filled, perform the action
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const PaidPage()),
                    );
                  } else {}
                }),
          ))
    ]);
  }
}

class AddTouristWidget extends StatelessWidget {
  const AddTouristWidget({
    super.key,
    required this.touristProvider,
  });

  final TouristProvider touristProvider;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 58,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Добавить туриста',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w500,
                      height: 26.4 / 22)),
              ExpandButton(
                icon: Icons.add,
                iconColor: Colors.white,
                containerColor: const Color.fromARGB(255, 13, 114, 255),
                onTap: () {
                  touristProvider
                      .addToTourists(touristProvider.tourists.length + 1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandButton extends StatelessWidget {
  const ExpandButton(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.containerColor,
      required this.iconColor});

  final IconData icon;
  final Color iconColor;
  final Color containerColor;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: containerColor,
          height: 32,
          width: 32,
          child: Icon(
            icon,
            color: iconColor,
            size: 24,
          ),
        ),
      ),
    );
  }
}
