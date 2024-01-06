import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:paras_s_application1/presentation/sign_up_1_screen/models/sign_up_1_model.dart';
part 'sign_up_1_event.dart';
part 'sign_up_1_state.dart';

/// A bloc that manages the state of a SignUp1 according to the event that is dispatched to it.
class SignUp1Bloc extends Bloc<SignUp1Event, SignUp1State> {
  SignUp1Bloc(SignUp1State initialState) : super(initialState) {
    on<SignUp1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUp1InitialEvent event,
    Emitter<SignUp1State> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.signUpTwoScreen,
      );
    });
  }
}
