import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:paras_s_application1/presentation/sign_up_three_screen/models/sign_up_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'sign_up_three_event.dart';
part 'sign_up_three_state.dart';

/// A bloc that manages the state of a SignUpThree according to the event that is dispatched to it.
class SignUpThreeBloc extends Bloc<SignUpThreeEvent, SignUpThreeState>
    with CodeAutoFill {
  SignUpThreeBloc(SignUpThreeState initialState) : super(initialState) {
    on<SignUpThreeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<SignUpThreeState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    SignUpThreeInitialEvent event,
    Emitter<SignUpThreeState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
