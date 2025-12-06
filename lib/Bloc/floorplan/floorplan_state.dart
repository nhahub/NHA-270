import 'dart:typed_data';

abstract class FloorplanState {}

class FloorplanInitial extends FloorplanState {}

class FloorplanLoading extends FloorplanState {}

class FloorplanSuccess extends FloorplanState {
  final Uint8List imageBytes;
  FloorplanSuccess(this.imageBytes);
}

class FloorplanFailure extends FloorplanState {
  final String message;
  FloorplanFailure(this.message);
}
