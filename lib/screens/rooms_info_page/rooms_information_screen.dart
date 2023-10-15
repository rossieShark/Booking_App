import 'package:booking/app_logic/rooms_bloc/rooms_bloc.dart';
import 'package:booking/app_logic/rooms_bloc/rooms_bloc_event.dart';
import 'package:booking/app_logic/rooms_bloc/rooms_bloc_state.dart';
import 'package:booking/screens/rooms_info_page/rooms_list.dart';
import 'package:booking/widgets/app_colors.dart';
import 'package:booking/widgets/fading_indicator.dart';
import 'package:flutter/material.dart';

class RoomsInformationPage extends StatefulWidget {
  final String hotelName;
  final String hotelAddress;
  const RoomsInformationPage(
      {super.key, required this.hotelName, required this.hotelAddress});

  @override
  State<RoomsInformationPage> createState() => RoomsInformationPageState();
}

class RoomsInformationPageState extends State<RoomsInformationPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<RoomsBloc>(context).add(const FetchRoomsBlocEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomsBloc, RoomsBlocState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text(
            widget.hotelName,
          ),
        ),
        body: state.map(
          loading: (_) => const Center(child: CustomFadingCircleIndicator()),
          noResults: (_) => const Text('No Results'),
          loaded: (loadEvent) => RoomsListView(roomsList: loadEvent.rooms),
        ),
      );
    });
  }
}
