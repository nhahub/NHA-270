// lib/bloc/floorplan_event.dart
abstract class FloorplanEvent {}

class GenerateFloorplanRequested extends FloorplanEvent {
  final String prompt;
  GenerateFloorplanRequested(this.prompt);
}
