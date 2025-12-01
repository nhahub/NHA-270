import 'package:flutter_bloc/flutter_bloc.dart';
import '../Repositories/floorplan_repository.dart';
import 'floorplan_event.dart';
import 'floorplan_state.dart';

class FloorplanBloc extends Bloc<FloorplanEvent, FloorplanState> {
  final FloorplanRepository repository;

  FloorplanBloc(this.repository) : super(FloorplanInitial()) {
    on<GenerateFloorplanRequested>(_onGenerate);
  }

  Future<void> _onGenerate(
      GenerateFloorplanRequested event,
      Emitter<FloorplanState> emit,
      ) async {
    try {
      emit(FloorplanLoading());

      final bytes = await repository.generateFloorplan(event.prompt);

      emit(FloorplanSuccess(bytes));
    } catch (e) {
      emit(FloorplanFailure(e.toString()));
    }
  }
}
