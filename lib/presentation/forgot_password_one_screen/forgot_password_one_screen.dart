import 'models/forgot_password_one_model.dart';
import 'package:faiz_e_s_application1/core/app_export.dart';
import 'package:faiz_e_s_application1/core/utils/validation_functions.dart';
import 'package:faiz_e_s_application1/widgets/custom_elevated_button.dart';
import 'package:faiz_e_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/forgot_password_one_provider.dart';

class ForgotPasswordOneScreen extends StatefulWidget {
  const ForgotPasswordOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordOneScreenState createState() => ForgotPasswordOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordOneProvider(),
      child: ForgotPasswordOneScreen(),
    );
  }
}

class ForgotPasswordOneScreenState extends State<ForgotPasswordOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 121.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 56.v),
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text(
                        "msg_reset_your_password".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text(
                        "msg_enter_your_registered".tr,
                        style: CustomTextStyles.bodyMediumBlack90013,
                      ),
                    ),
                    SizedBox(height: 79.v),
                    Selector<ForgotPasswordOneProvider, TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.emailController,
                      builder: (context, emailController, child) {
                        return CustomTextFormField(
                          controller: emailController,
                          hintText: "lbl_email".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                          obscureText: true,
                        );
                      },
                    ),
                    SizedBox(height: 27.v),
                    Padding(
                      padding: EdgeInsets.only(left: 47.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_remember_the_password2".tr,
                              style: CustomTextStyles.bodyMediumff00000013,
                            ),
                            TextSpan(
                              text: "lbl_login".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      text: "lbl_submit".tr,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
