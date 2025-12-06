abstract class UserEvent {}

class LoadUserEvent extends UserEvent {}

class UpdateUserEvent extends UserEvent {
  final String name;
  final String? profileImageBase64;

  UpdateUserEvent({
    required this.name,
    this.profileImageBase64,
  });
}
