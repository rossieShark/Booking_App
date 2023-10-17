import 'package:booking/app_logic/index.dart';
import 'package:booking/screens/hotel_page/widgets/hotel_page_main_content.dart';
import 'package:booking/screens/rooms_info_page/rooms_information_screen.dart';
import 'package:booking/services/services_index.dart';
import 'package:booking/widgets/widgets_index.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ThirdBlocWidget extends StatelessWidget {
  final String hotelAddress;
  const ThirdBlocWidget({super.key, required this.hotelAddress});

  @override
  Widget build(BuildContext context) {
    final name =
        context.findAncestorStateOfType<HotelPageMainContentState>()?.hotelName;
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.white,
          border:
              Border(top: BorderSide(width: 1, color: AppColors.lightBlue))),
      width: MediaQuery.of(context).size.width,
      height: 88,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 12, 28),
          child: CustomButton(
            buttonText: 'К выбору номера',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BlocProvider<RoomsBloc>(
                      create: (_) => GetIt.I(),
                      child: RoomsInformationPage(
                        hotelName: name ?? '',
                        hotelAddress: hotelAddress,
                      )),
                ),
              );
            },
          )),
    );
  }
}
