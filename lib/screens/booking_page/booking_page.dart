import 'package:booking/app_logic/booking_bloc/booking_bloc.dart';
import 'package:booking/app_logic/booking_bloc/booking_bloc_event.dart';
import 'package:booking/app_logic/booking_bloc/booking_bloc_state.dart';
import 'package:booking/app_logic/controller_provider.dart';
import 'package:booking/screens/booking_page/booking_page_content.dart';

import 'package:booking/widgets/fading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookingPage extends StatefulWidget {
  final String hotelName;
  final String hotelAddress;
  const BookingPage(
      {super.key, required this.hotelAddress, required this.hotelName});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<BookingBloc>(context).add(const FetchBookingEvent());
  }

  @override
  Widget build(BuildContext context) {
    final controllerProvider =
        Provider.of<TextFieldControllerProvider>(context, listen: false);
    return BlocBuilder<BookingBloc, BookingState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 246, 249),
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Бронирование',
            style: TextStyle(fontSize: 18, fontFamily: 'SFPro'),
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
                controllerProvider.removeAllControllers();
              }),
        ),
        body: state.map(
          loading: (_) => const Center(child: CustomFadingCircleIndicator()),
          noResults: (_) => const Text('No Results'),
          loaded: (loadEvent) => BookingPageContent(
            bookingInfo: loadEvent.data,
            hotelAddress: widget.hotelAddress,
            hotelName: widget.hotelName,
          ),
        ),
      );
    });
  }
}