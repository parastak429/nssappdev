import 'bloc/sign_up_two_bloc.dart';
import 'models/sign_up_two_model.dart';
import 'package:flutter/material.dart';
import 'package:paras_s_application1/core/app_export.dart';
import 'package:paras_s_application1/core/utils/validation_functions.dart';
import 'package:paras_s_application1/widgets/custom_elevated_button.dart';
import 'package:paras_s_application1/widgets/custom_text_form_field.dart';

class SignUpTwoScreen extends StatelessWidget {
  SignUpTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpTwoBloc>(
      create: (context) => SignUpTwoBloc(SignUpTwoState(
        signUpTwoModelObj: SignUpTwoModel(),
      ))
        ..add(SignUpTwoInitialEvent()),
      child: SignUpTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1,
                        height: 432.v,
                        width: 360.h,
                        radius: BorderRadius.circular(
                          76.h,
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle69,
                        height: 297.v,
                        width: 239.h,
                        radius: BorderRadius.circular(
                          50.h,
                        ),
                        alignment: Alignment.topRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle68,
                        height: 260.v,
                        width: 116.h,
                        radius: BorderRadius.circular(
                          50.h,
                        ),
                        alignment: Alignment.topRight,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 172.h,
                          margin: EdgeInsets.only(
                            left: 73.h,
                            top: 103.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_register_your".tr,
                                  style: theme.textTheme.headlineSmall,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "lbl_profile".tr,
                                  style: CustomTextStyles.displaySmall36,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle70,
                        height: 250.v,
                        width: 47.h,
                        radius: BorderRadius.circular(
                          23.h,
                        ),
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 109.v),
                      ),
                      _buildRegistrationForm(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegistrationForm(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          right: 30.h,
          bottom: 36.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 12.h),
              child: BlocSelector<SignUpTwoBloc, SignUpTwoState,
                  TextEditingController?>(
                selector: (state) => state.nameController,
                builder: (context, nameController) {
                  return CustomTextFormField(
                    controller: nameController,
                    hintText: "lbl_name".tr,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      if (!isText(value)) {
                        return "err_msg_please_enter_valid_text".tr;
                      }
                      return null;
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 7.h),
                  );
                },
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text(
                "lbl_email_id".tr,
                style: TextStyle(
                  color: appTheme.indigo500,
                  fontSize: 15.fSize,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 27.v),
            Divider(
              indent: 7.h,
              endIndent: 5.h,
            ),
            SizedBox(height: 21.v),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text(
                "lbl_registration_id".tr,
                style: TextStyle(
                  color: appTheme.indigo500,
                  fontSize: 15.fSize,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 26.v),
            Divider(
              color: appTheme.indigo500,
              indent: 12.h,
            ),
            SizedBox(height: 14.v),
            Padding(
              padding: EdgeInsets.only(left: 15.h),
              child: Text(
                "lbl_nss_id".tr,
                style: TextStyle(
                  color: appTheme.indigo500,
                  fontSize: 15.fSize,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 22.v),
            Divider(
              color: appTheme.indigo500,
              indent: 12.h,
            ),
            SizedBox(height: 22.v),
            CustomElevatedButton(
              width: 109.h,
              text: "lbl_register".tr,
              margin: EdgeInsets.only(left: 75.h),
              buttonStyle: CustomButtonStyles.fillIndigoTL10,
            ),
          ],
        ),
      ),
    );
  }
}
