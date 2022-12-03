abstract class RegistrationEvent {}

class LoadedRegistrationEvent extends RegistrationEvent {}

class CreateUserEvent extends RegistrationEvent {
  CreateUserEvent(this.password, this.email);
  final String email;
  final String password;
}
