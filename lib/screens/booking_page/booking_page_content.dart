import 'package:booking/app_logic/index.dart';
import 'package:booking/models/models_index.dart';
import 'package:booking/screens/booking_page/booking_page_index.dart';
import 'package:booking/screens/hotel_page/widgets/hotel_page_main_content.dart';
import 'package:booking/screens/paid_page/paid_page.dart';
import 'package:booking/services/services_index.dart';
import 'package:booking/widgets/widgets_index.dart';
import 'package:flutter/material.dart';

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
    final String? name =
        context.findAncestorStateOfType<HotelPageMainContentState>()?.hotelName;
    print(name);

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
      BackgroundContainer(
        height: 120,
        borderRadius: BorderRadius.circular(15),
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
                hotelName: hotelName,
                hotelAddress: hotelAddress,
              ),
            ],
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
      const SizedBox(
        height: 8,
      ),
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
      PayButtonWidget(price: price)
    ]);
  }
}

class PayButtonWidget extends StatelessWidget {
  const PayButtonWidget({
    super.key,
    required this.price,
  });

  final String price;

  void onPressed(BuildContext context) {
    final provider = context.read<TextFieldsProvider>();
    provider.setButtonTapped(true);
    provider.isAllControllersValid();

    if (provider.isAllControllersValid()) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const PaidPage()),
      );
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: AppColors.white,
          border:
              Border(top: BorderSide(width: 1, color: AppColors.lightBlue))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
        child: CustomButton(
          buttonText: 'Oплатить $price ₽',
          onPressed: () {
            onPressed(context);
          },
        ),
      ),
    );
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
    return BackgroundContainer(
      height: 58,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Добавить туриста',
              style: TextStyleService.headline1(),
            ),
            ExpandButton(
              icon: Icons.add,
              iconColor: AppColors.white,
              containerColor: AppColors.blue,
              onTap: () {
                touristProvider
                    .addToTourists(touristProvider.tourists.length + 1);
              },
            ),
          ],
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
