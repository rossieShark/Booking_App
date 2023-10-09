import 'package:booking/models/hotel_conditions_model.dart';
import 'package:booking/models/hotel_model/hotel_model.dart';
import 'package:booking/screens/hotel_page/first_bloc_widgets.dart';
import 'package:booking/screens/hotel_page/second_bloc_widgets.dart';
import 'package:booking/screens/hotel_page/third_bloc_widgets.dart';
import 'package:flutter/material.dart';

class HotelPageMainContent extends StatefulWidget {
  final HotelResponse hotelInfo;
  const HotelPageMainContent({super.key, required this.hotelInfo});

  @override
  State<HotelPageMainContent> createState() => _HotelPageMainContentState();
}

class _HotelPageMainContentState extends State<HotelPageMainContent> {
  final hotelName = 'Steigenberg Makadi';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        FirstBlocWidgets(
          hotelInfo: widget.hotelInfo,
          hotelName: hotelName,
        ),
        const SizedBox(
          height: 8,
        ),
        SecondBlocWidgets(hotelInfo: widget.hotelInfo),
        const SizedBox(
          height: 12,
        ),
        ThirdBlocWidget(
          hotelName: hotelName,
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
      icon: 'assets/images/forward.png',
      image: 'assets/images/emoji-happy.png',
      title: 'Удобства'),
  const HotelConditions(
      description: 'Самое необходимое',
      icon: 'assets/images/forward.png',
      image: 'assets/images/tick-square.png',
      title: 'Что включено?'),
  const HotelConditions(
      description: 'Самое необходимое',
      icon: 'assets/images/forward.png',
      image: 'assets/images/close-square.png',
      title: 'Что не включено?'),
];
