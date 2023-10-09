import 'package:booking/models/rooms_model/room_model.dart';
import 'package:booking/screens/rooms_info_page/rooms_card.dart';
import 'package:flutter/widgets.dart';

class RoomsListView extends StatelessWidget {
  final List<Rooms> roomsList;
  final String hotelName;
  final String hotelAddress;
  const RoomsListView(
      {super.key,
      required this.roomsList,
      required this.hotelAddress,
      required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: roomsList.length,
        itemBuilder: (BuildContext context, int index) {
          return RoomsCard(
            roomsList: roomsList,
            index: index,
            hotelAddress: hotelAddress,
            hotelName: hotelName,
          );
        });
  }
}
