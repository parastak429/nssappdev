import 'bloc/sign_up_three_bloc.dart';
import 'models/sign_up_three_model.dart';
import 'package:flutter/material.dart';
import 'package:paras_s_application1/core/app_export.dart';
import 'package:paras_s_application1/widgets/custom_elevated_button.dart';
import 'package:paras_s_application1/widgets/custom_pin_code_text_field.dart';

class SignUpThreeScreen extends StatelessWidget {
  const SignUpThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpThreeBloc>(
      create: (context) => SignUpThreeBloc(SignUpThreeState(
        signUpThreeModelObj: SignUpThreeModel(),
      ))
        ..add(SignUpThreeInitialEvent()),
      child: SignUpThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 67.h,
            top: 82.v,
            right: 67.h,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 181.v,
                width: 212.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup25,
                      height: 155.v,
                      width: 196.h,
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 212.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_enter_verification2".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                              TextSpan(
                                text: "   ".tr,
                              ),
                              TextSpan(
                                text: "msg_you_will_get_a_otp".tr,
                                style: CustomTextStyles.bodyMediumBlack900,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(right: 3.h),
                child: BlocSelector<SignUpThreeBloc, SignUpThreeState,
                    TextEditingController?>(
                  selector: (state) => state.otpController,
                  builder: (context, otpController) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                text: "lbl_verify".tr,
                buttonStyle: CustomButtonStyles.fillPrimary,
              ),
              SizedBox(height: 10.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_didn_t_receive_otp".tr,
                      style: CustomTextStyles.bodyMediumBlack900_1,
                    ),
                    TextSpan(
                      text: "lbl_resend".tr,
                      style: CustomTextStyles.titleSmallBlueA700,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
