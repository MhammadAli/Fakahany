import 'package:fakahany/constants.dart';
import 'package:fakahany/core/helper_functions/build_error_bar.dart';
import 'package:fakahany/core/widgets/custom_button.dart';
import 'package:fakahany/core/widgets/custom_text_field.dart';
import 'package:fakahany/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/password_field.dart';
import '../../cubits/signup_cubits/signup_cubit.dart';
import 'have_an_account_widget.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late String userName, email, password;
  late bool isTermsAccepted = false;
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
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
                    userName = value!;
                  },
                  hintText: 'الاسم كامل',
                  textInputType: TextInputType.name),
              SizedBox(
                height: 16.h,
              ),
              CustomTextFormField(
                  onSaved: (value) {
                    email = value!;
                  },
                  hintText: 'البريد الإلكتروني',
                  textInputType: TextInputType.emailAddress),
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
              TermsAndConditions(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      if (isTermsAccepted) {
                        context
                            .read<SignupCubit>()
                            .createUserWithEmailAndPassword(
                              email,
                              password,
                              userName,
                            );
                      } else {
                        buildErrorBar(
                            context, 'يجب عليك الموافقة على الشروط والأحكام');
                      }
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  text: 'إنشاء حساب جديد'),
              SizedBox(
                height: 26.h,
              ),
              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
