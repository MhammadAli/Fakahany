import 'package:fakahany/features/auth/presentation/cubits/signin_cubits/signin_cubit.dart';
import 'package:fakahany/features/auth/presentation/views/widgets/signin_view_body_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/get_it_service.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../domain/repos/auth_repo.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: 'تسجيل دخول',
        ),
        body: SignInViewBodyBlocConsumer(),
      ),
    );
  }
}
