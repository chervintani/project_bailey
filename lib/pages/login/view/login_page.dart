import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_bailey/pages/country/bloc/bloc.dart';
import 'package:project_bailey/pages/country/country.dart';
import 'package:project_bailey/pages/login/bloc/bloc.dart';
import 'package:project_bailey/pages/login/login.dart';

import '../../../models/result/result.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void _listener(BuildContext context, LoginState state) {
    switch (state.loginStatus) {
      case RequestStatus.waiting:
        // TODO: Handle this case.
        break;
      case RequestStatus.inProgress:
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: Text('logging in'),
            );
          },
        );
        break;
      case RequestStatus.success:
        Navigator.of(context).pop();
        context.push(CountryPage.route, extra: CountryState(title: 'Country'));
        break;
      case RequestStatus.failure:
        // TODO: Handle this case.
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => LoginBloc(const LoginState()),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) => _listener(context, state),
        child: const Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  Padding(
                    padding: EdgeInsets.only(top: 120, bottom: 80, left: 10),
                    child: LoginHeader(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: LoginForm(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: LoginForgotPassword(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: LoginButton(),
                  ),
                ]),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: LoginFooter(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
