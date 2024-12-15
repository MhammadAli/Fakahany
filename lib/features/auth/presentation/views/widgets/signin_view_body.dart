import 'package:fakahany/core/widgets/custom_button.dart';
import 'package:fakahany/core/widgets/custom_text_field.dart';
import 'package:fakahany/core/widgets/password_field.dart';
import 'package:fakahany/features/auth/presentation/cubits/signin_cubits/signin_cubit.dart';
import 'package:fakahany/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fakahany/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:fakahany/utils/app_colors.dart';
import 'package:fakahany/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../generated/assets.dart';
import 'dont_have_account_widget.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  late String email, password;
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 24.h,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                textInputType: TextInputType.emailAddress,
                hintText: 'البريد الإلكتروني',
              ),
              SizedBox(
                height: 16.h,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 33.h,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SignInCubit>().signIn(email, password);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'تسجيل دخول',
              ),
              SizedBox(
                height: 33.h,
              ),
              const DontHaveAnAccountWidget(),
              SizedBox(
                height: 33.h,
              ),
              OrDivider(),
              SizedBox(
                height: 16.h,
              ),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
              ),
              SizedBox(
                height: 16.h,
              ),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesAppleIcon,
                title: 'تسجيل بواسطة أبل',
              ),
              SizedBox(
                height: 16.h,
              ),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل بواسطة فيسبوك',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
