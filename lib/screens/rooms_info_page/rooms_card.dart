import 'package:booking/app_logic/booking_bloc/booking_bloc.dart';
import 'package:booking/models/rooms_model/room_model.dart';
import 'package:booking/screens/booking_page/booking_page.dart';

import 'package:booking/screens/photo_carousel.dart';
import 'package:booking/widgets/custom_button.dart';
import 'package:booking/widgets/peculiarities_list.dart';
import 'package:booking/widgets/price_section.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class RoomsCard extends StatelessWidget {
  final String hotelName;
  final String hotelAddress;
  final List<Rooms> roomsList;
  final int index;

  const RoomsCard(
      {super.key,
      required this.roomsList,
      required this.index,
      required this.hotelAddress,
      required this.hotelName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 539,
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  height: 257,
                  child:
                      CarouselWithIndicator(images: roomsList[index].images)),
              Text(
                roomsList[index].name,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'SFPro',
                    height: 26.4 / 22,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: CreatePeculiaritiesSection(
                    peculiarities: roomsList[index].peculiarities),
              ),
              IntrinsicWidth(
                child: Container(
                  height: 29,
                  color:
                      const Color.fromARGB(255, 13, 114, 255).withOpacity(0.1),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Подробнее о номере',
                        style: TextStyle(
                            color: Color.fromARGB(255, 13, 114, 255),
                            fontSize: 16,
                            fontFamily: 'SFPro',
                            height: 19.2 / 16,
                            fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.asset('assets/images/forward.png',
                                  color: const Color.fromARGB(
                                      255, 13, 114, 255)))),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CreatePriceSection(
                  price: roomsList[index].price,
                  priceFor: roomsList[index].pricePer),
              CustomButton(
                  buttonText: 'Выбрать номер',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BlocProvider<BookingBloc>(
                            create: (_) => GetIt.I(),
                            child: BookingPage(
                              hotelAddress: hotelAddress,
                              hotelName: hotelName,
                            )),
                      ),
                    );
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
