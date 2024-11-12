abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final String verificationId;
  RegisterSuccess(this.verificationId);
}

class RegisterFailure extends RegisterState {
  final String error;
  RegisterFailure(this.error);
}

class LinkEmailPasswordLoading extends RegisterState {}

class LinkEmailPasswordSuccess extends RegisterState {}

class LinkEmailPasswordFailure extends RegisterState {
  final String error;
  LinkEmailPasswordFailure(this.error);
}
