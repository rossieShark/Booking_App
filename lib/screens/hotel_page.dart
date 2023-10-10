import 'package:booking/app_logic/hotel_page_bloc/hotel_page_bloc.dart';
import 'package:booking/app_logic/hotel_page_bloc/hotel_page_event.dart';
import 'package:booking/app_logic/hotel_page_bloc/hotel_page_state.dart';

import 'package:booking/screens/hotel_page_main_content.dart';
import 'package:booking/widgets/app_colors.dart';
import 'package:booking/widgets/fading_indicator.dart';
import 'package:flutter/material.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HotelBloc>(context).add(const FetchHotelInfoEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: const Text(
            'Отель',
          ),
        ),
        body: state.map(
          loading: (_) => const Center(child: CustomFadingCircleIndicator()),
          noResults: (_) => const Text('No Results'),
          loaded: (loadEvent) =>
              HotelPageMainContent(hotelInfo: loadEvent.data),
        ),
      );
    });
  }
}
