import 'package:fakahany/core/helper_functions/build_error_bar.dart';
import 'package:fakahany/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:fakahany/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/signin_cubits/signin_cubit.dart';
import 'custom_progress_hud.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
        }
        if (state is SignInFailure) {
          buildErrorBar(
            context,
            state.message,
          );
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SignInLoading ? true : false,
          child: SignInViewBody(),
        );
      },
    );
  }
}
