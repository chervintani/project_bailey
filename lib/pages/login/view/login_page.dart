import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:project_bailey/pages/country/bloc/bloc.dart';
import 'package:project_bailey/pages/country/country.dart';
import 'package:project_bailey/pages/login/bloc/bloc.dart';
import 'package:project_bailey/pages/login/login.dart';
import 'package:project_bailey/widgets/loading_dialog.dart';

import '../../../models/result/result.dart';
import '../../../repositories/repositories.dart';

class LoginPage extends StatelessWidget {
  final LoginState? loginState;
  static const String route = '/';
  const LoginPage({super.key, this.loginState});

  void _listener(BuildContext context, LoginState state) {
    switch (state.loginStatus) {
      case RequestStatus.inProgress:
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return LoadingDialog(text: 'Logging in...');
          },
        );
        break;
      case RequestStatus.success:
        Navigator.of(context).pop();
        context.push(CountryPage.route,
            extra: CountryState(title: 'Welcome ${state.loggedUser.name}!'));
        break;
      case RequestStatus.failure:
        Navigator.of(context).pop();
        FocusScope.of(context).requestFocus(FocusNode());
        final scaffold = ScaffoldMessenger.of(context);
        scaffold.removeCurrentSnackBar();
        scaffold.showSnackBar(
          SnackBar(
            content: const Text('Invalid Credentials'),
            action: SnackBarAction(
                label: 'CLOSE', onPressed: scaffold.hideCurrentSnackBar),
            duration: const Duration(seconds: 2),
          ),
        );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => LoginBloc(
        loginState: loginState ?? const LoginState(),
        authRepository: RepositoryProvider.of<AuthRepository>(context),
      ),
      child: BlocListener<LoginBloc, LoginState>(
        listenWhen: (previous, current) =>
            previous.loginStatus != current.loginStatus,
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
