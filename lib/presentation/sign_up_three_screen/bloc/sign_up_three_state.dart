// ignore_for_file: must_be_immutable

part of 'sign_up_three_bloc.dart';

/// Represents the state of SignUpThree in the application.
class SignUpThreeState extends Equatable {
  SignUpThreeState({
    this.otpController,
    this.signUpThreeModelObj,
  });

  TextEditingController? otpController;

  SignUpThreeModel? signUpThreeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        signUpThreeModelObj,
      ];
  SignUpThreeState copyWith({
    TextEditingController? otpController,
    SignUpThreeModel? signUpThreeModelObj,
  }) {
    return SignUpThreeState(
      otpController: otpController ?? this.otpController,
      signUpThreeModelObj: signUpThreeModelObj ?? this.signUpThreeModelObj,
    );
  }
}
