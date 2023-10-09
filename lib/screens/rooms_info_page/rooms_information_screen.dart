import 'package:booking/app_logic/rooms_bloc/rooms_bloc.dart';
import 'package:booking/app_logic/rooms_bloc/rooms_bloc_event.dart';
import 'package:booking/app_logic/rooms_bloc/rooms_bloc_state.dart';
import 'package:booking/screens/rooms_info_page/rooms_list.dart';
import 'package:booking/widgets/fading_indicator.dart';
import 'package:flutter/material.dart';

class RoomsInformationPage extends StatefulWidget {
  final String hotelName;
  final String hotelAddress;
  const RoomsInformationPage(
      {super.key, required this.hotelName, required this.hotelAddress});

  @override
  State<RoomsInformationPage> createState() => _RoomsInformationPageState();
}

class _RoomsInformationPageState extends State<RoomsInformationPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<RoomsBloc>(context).add(const FetchRoomsBlocEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomsBloc, RoomsBlocState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 246, 249),
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            widget.hotelName,
            style: const TextStyle(fontSize: 18, fontFamily: 'SFPro'),
          ),
        ),
        body: state.map(
          loading: (_) => const Center(child: CustomFadingCircleIndicator()),
          noResults: (_) => const Text('No Results'),
          loaded: (loadEvent) => RoomsListView(
              roomsList: loadEvent.rooms,
              hotelAddress: widget.hotelAddress,
              hotelName: widget.hotelName),
        ),
      );
    });
  }
}
