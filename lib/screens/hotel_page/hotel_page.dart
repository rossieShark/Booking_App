import 'package:booking/app_logic/index.dart';
import 'package:booking/screens/hotel_page/hotel_page_index.dart';

import 'package:booking/services/services_index.dart';
import 'package:booking/widgets/widgets_index.dart';
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
          noResults: (_) => const NoResultWidget(),
          loaded: (loadEvent) =>
              HotelPageMainContent(hotelInfo: loadEvent.data),
        ),
      );
    });
  }
}
