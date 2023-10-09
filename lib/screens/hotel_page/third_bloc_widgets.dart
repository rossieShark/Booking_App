import 'package:booking/app_logic/rooms_bloc/rooms_bloc.dart';
import 'package:booking/screens/rooms_info_page/rooms_information_screen.dart';
import 'package:booking/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ThirdBlocWidget extends StatelessWidget {
  final String hotelName;
  final String hotelAddress;
  const ThirdBlocWidget(
      {super.key, required this.hotelName, required this.hotelAddress});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
                  width: 1, color: Color.fromARGB(255, 232, 233, 236)))),
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
                        hotelName: hotelName,
                        hotelAddress: hotelAddress,
                      )),
                ),
              );
            },
          )),
    );
  }
}
