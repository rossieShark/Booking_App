export 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking/app_logic/hotel_page_bloc/hotel_page_bloc.dart';

import 'package:booking/app_logic/rooms_bloc/rooms_bloc_event.dart';
import 'package:booking/app_logic/rooms_bloc/rooms_bloc_state.dart';

import 'package:booking/services/repositories/rooms_repo.dart';

class RoomsBloc extends Bloc<RoomsBlocEvent, RoomsBlocState> {
  final RoomsRepository repository;

  RoomsBloc(this.repository) : super(const RoomsBlocState.loading()) {
    on<FetchRoomsBlocEvent>(onFetchRoomInfo);
  }

  void onFetchRoomInfo(
      FetchRoomsBlocEvent event, Emitter<RoomsBlocState> emit) async {
    final roomsList = await repository.getRooms();
    if (roomsList.isEmpty) {
      emit(const RoomsBlocState.noResults());
      return;
    }
    emit(RoomsBlocState.loaded(rooms: roomsList));
  }
}
