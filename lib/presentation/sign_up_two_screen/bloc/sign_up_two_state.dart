// ignore_for_file: must_be_immutable

part of 'sign_up_two_bloc.dart';

/// Represents the state of SignUpTwo in the application.
class SignUpTwoState extends Equatable {
  SignUpTwoState({
    this.nameController,
    this.signUpTwoModelObj,
  });

  TextEditingController? nameController;

  SignUpTwoModel? signUpTwoModelObj;

  @override
  List<Object?> get props => [
        nameController,
        signUpTwoModelObj,
      ];
  SignUpTwoState copyWith({
    TextEditingController? nameController,
    SignUpTwoModel? signUpTwoModelObj,
  }) {
    return SignUpTwoState(
      nameController: nameController ?? this.nameController,
      signUpTwoModelObj: signUpTwoModelObj ?? this.signUpTwoModelObj,
    );
  }
}
