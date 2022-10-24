import 'package:flutter/material.dart';
import 'package:project_bailey/pages/login/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return const Scaffold(
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
    );
  }
}
