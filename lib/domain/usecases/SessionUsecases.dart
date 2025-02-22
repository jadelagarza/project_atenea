// lib/domain/usecases/session_usecases.dart
import '../entities/session.dart';
import '../repositories/SessionRepository.dart';

class GetSessionUseCase {
  final SessionRepository repository;

  GetSessionUseCase(this.repository);

  Future<Session?> call() async {
    return await repository.getSession();
  }
}

class SaveSessionUseCase {
  final SessionRepository repository;

  SaveSessionUseCase(this.repository);

  Future<void> call(Session session) async {
    await repository.saveSession(session);
  }
}

class ClearSessionUseCase {
  final SessionRepository repository;

  ClearSessionUseCase(this.repository);

  Future<void> call() async {
    await repository.clearSession();
  }
}
