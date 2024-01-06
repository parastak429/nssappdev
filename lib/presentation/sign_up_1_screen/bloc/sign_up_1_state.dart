// ignore_for_file: must_be_immutable

part of 'sign_up_1_bloc.dart';

/// Represents the state of SignUp1 in the application.
class SignUp1State extends Equatable {
  SignUp1State({this.signUp1ModelObj});

  SignUp1Model? signUp1ModelObj;

  @override
  List<Object?> get props => [
        signUp1ModelObj,
      ];
  SignUp1State copyWith({SignUp1Model? signUp1ModelObj}) {
    return SignUp1State(
      signUp1ModelObj: signUp1ModelObj ?? this.signUp1ModelObj,
    );
  }
}
