import 'package:booking/app_logic/index.dart';
import 'package:booking/screens/booking_page/booking_page_index.dart';
import 'package:booking/services/services_index.dart';
import 'package:booking/widgets/widgets_index.dart';
import 'package:flutter/material.dart';

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
    return BlocBuilder<BookingBloc, BookingState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: const Text(
            'Бронирование',
          ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
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
