import 'package:booking/models/models_index.dart';
import 'package:booking/resources/resources.dart';
import 'package:booking/screens/hotel_page/hotel_page_index.dart';
import 'package:flutter/material.dart';

class HotelPageMainContent extends StatefulWidget {
  final HotelResponse hotelInfo;
  const HotelPageMainContent({super.key, required this.hotelInfo});

  @override
  State<HotelPageMainContent> createState() => HotelPageMainContentState();
}

class HotelPageMainContentState extends State<HotelPageMainContent> {
  final hotelName = 'Steigenberg Makadi';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        FirstBlocWidgets(
          hotelInfo: widget.hotelInfo,
        ),
        const SizedBox(
          height: 8,
        ),
        SecondBlocWidgets(hotelInfo: widget.hotelInfo),
        const SizedBox(
          height: 12,
        ),
        ThirdBlocWidget(
          hotelAddress: widget.hotelInfo.adress,
        )
      ],
    );
  }
}

String formatNumberWithSpace(int number) {
  final formattedNumber = number.toString();
  final buffer = StringBuffer();

  for (var i = 0; i < formattedNumber.length; i++) {
    if (i > 0 && (formattedNumber.length - i) % 3 == 0) {
      buffer.write(' '); // Add a space as the thousand separator
    }
    buffer.write(formattedNumber[i]);
  }

  return buffer.toString();
}

List<String> peculiarities = [
  'Бесплатный Wi-Fi',
  '20 км до аэропорта',
  '1 км до пляжа',
  'Бесплатный фитнес-клуб'
];

List<HotelConditions> conditions = [
  const HotelConditions(
      description: 'Самое необходимое',
      icon: AppImages.forward,
      image: AppImages.happy,
      title: 'Удобства'),
  const HotelConditions(
      description: 'Самое необходимое',
      icon: AppImages.forward,
      image: AppImages.tick,
      title: 'Что включено?'),
  const HotelConditions(
      description: 'Самое необходимое',
      icon: AppImages.forward,
      image: AppImages.close,
      title: 'Что не включено?'),
];
