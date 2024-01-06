// ignore_for_file: must_be_immutable

part of 'sign_up_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpThreeEvent extends Equatable {}

/// Event that is dispatched when the SignUpThree widget is first created.
class SignUpThreeInitialEvent extends SignUpThreeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends SignUpThreeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
