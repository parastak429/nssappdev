import 'bloc/sign_up_1_bloc.dart';
import 'models/sign_up_1_model.dart';
import 'package:flutter/material.dart';
import 'package:paras_s_application1/core/app_export.dart';
import 'package:paras_s_application1/widgets/custom_elevated_button.dart';
import 'package:paras_s_application1/widgets/custom_outlined_button.dart';

class SignUp1Screen extends StatelessWidget {
  const SignUp1Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUp1Bloc>(
        create: (context) =>
            SignUp1Bloc(SignUp1State(signUp1ModelObj: SignUp1Model()))
              ..add(SignUp1InitialEvent()),
        child: SignUp1Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUp1Bloc, SignUp1State>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: SizedBox(
                      height: SizeUtils.height,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                margin: EdgeInsets.only(top: 207.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 31.h, vertical: 38.v),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder76,
                                    image: DecorationImage(
                                        image:
                                            AssetImage(ImageConstant.imgGroup1),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Spacer(),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArcticonsCallerId,
                                          height: 33.v,
                                          width: 30.h),
                                      SizedBox(height: 5.v),
                                      Divider(indent: 8.h),
                                      SizedBox(height: 28.v),
                                      Align(
                                          alignment: Alignment.center,
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "msg_don_t_have_account"
                                                            .tr,
                                                    style: theme
                                                        .textTheme.bodyLarge),
                                                TextSpan(
                                                    text: "lbl_sign_up".tr,
                                                    style: theme
                                                        .textTheme.titleMedium)
                                              ]),
                                              textAlign: TextAlign.left)),
                                      SizedBox(height: 25.v),
                                      CustomElevatedButton(
                                          height: 44.v,
                                          width: 166.h,
                                          text: "lbl_sign_in".tr,
                                          margin: EdgeInsets.only(left: 55.h)),
                                      SizedBox(height: 29.v),
                                      CustomOutlinedButton(
                                          width: 166.h,
                                          text: "lbl_guest".tr,
                                          margin: EdgeInsets.only(left: 58.h))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle69,
                            height: 294.v,
                            width: 233.h,
                            radius: BorderRadius.circular(50.h),
                            alignment: Alignment.topRight),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle68,
                            height: 258.v,
                            width: 115.h,
                            radius: BorderRadius.circular(50.h),
                            alignment: Alignment.topRight),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 75.h, top: 142.v),
                                child: Text("lbl_welcome".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.onPrimary,
                                        fontSize: 39.35222625732422.fSize,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w700)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle70,
                            height: 241.v,
                            width: 55.h,
                            radius: BorderRadius.circular(27.h),
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 112.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgNssLogo11,
                            height: 105.v,
                            width: 107.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 5.h, top: 7.v))
                      ])))));
    });
  }
}
