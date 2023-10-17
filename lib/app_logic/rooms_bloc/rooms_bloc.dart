export 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking/app_logic/index.dart';
import 'package:booking/services/services_index.dart';

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
