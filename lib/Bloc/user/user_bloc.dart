import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Models/user.dart';
import '../../Repositories/user_repository.dart';

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repo;

  UserBloc(this.repo) : super(UserInitial()) {
    on<LoadUserEvent>(_onLoadUser);
    on<UpdateUserEvent>(_onUpdateUser);
  }

  Future<void> _onLoadUser(
      LoadUserEvent event,
      Emitter<UserState> emit,
      ) async {
    emit(UserLoading());
    try {
      final prefs = await SharedPreferences.getInstance();
      final email = prefs.getString('userEmail');
      if (email == null) {
        emit(UserError("No logged in user"));
        return;
      }

      final User? user = await repo.getUserByEmail(email);
      if (user == null) {
        emit(UserError("User not found"));
      } else {
        emit(UserLoaded(user));
      }
    } catch (e) {
      emit(UserError("Failed to load user: $e"));
    }
  }

  Future<void> _onUpdateUser(
      UpdateUserEvent event,
      Emitter<UserState> emit,
      ) async {
    // لازم يكون في UserLoaded عشان نعرف الإيميل
    if (state is! UserLoaded) return;

    final currentUser = (state as UserLoaded).user;

    // نحدّث في الداتابيز
    await repo.updateUser(
      email: currentUser.email,
      name: event.name,
      profileImage: event.profileImageBase64,
    );

    // نعمل نسخة جديدة من اليوزر بالتحديثات
    final updatedUser = User(
      email: currentUser.email,
      name: event.name,
      password: currentUser.password,
      profileImage: event.profileImageBase64,
    );

    emit(UserLoaded(updatedUser));
  }
}
