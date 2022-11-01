import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/const/ui.dart';
import '../../core/utils/validators.dart';
import '../../core/router/app_router.gr.dart';
import '../../service_locator.dart';
import '../widgets/custom_input.dart';
import '../widgets/loader.dart';
import '../widgets/password_input.dart';
import 'widgets/auth_animation.dart';
import 'bloc/auth_bloc.dart';
import 'bloc/auth_event.dart';
import 'bloc/auth_state.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          // All dialog/router actions inside Listener. Context and flutter have to be out of the bloc
          // Author answer: https://github.com/felangel/bloc/issues/1030
          state.mapOrNull(
            success: (_) {
              context.router.push(const SuccessRoute());
            },
            error: (state) {
              context.router.push(ErrorRoute(error: state.error));
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            body: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Stack(
                children: [
                  SafeArea(
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: UI.padding),
                      // Spacer can't be inside SingleChildScrollView
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const SizedBox(
                              height: UI.padding / 2,
                            ),
                            const AuthAnimation(),
                            const SizedBox(
                              height: UI.padding * 2,
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  CustomInput(
                                    label: "Email",
                                    validator: Validators.email,
                                    controller: _emailController,
                                  ),
                                  PasswordInput(
                                    controller: _passwordController,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: UI.padding * 2,
                            ),
                            ElevatedButton(
                              onPressed: () => _signIn(context),
                              child: const Text("Sign In"),
                            ),
                            const SizedBox(
                              height: UI.padding / 2,
                            ),
                            TextButton(
                              onPressed: () => _signUp(context),
                              child: const Text("Sign Up"),
                            ),
                            const SizedBox(
                              height: UI.padding,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // best to use dialog window instead stack
                  if (state is AuthLoading) const Loader(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _signIn(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      String email = _emailController.text;
      String password = _passwordController.text;
      context.read<AuthBloc>().add(
            AuthSignInPressed(
              email: email,
              password: password,
            ),
          );
    }
  }

  void _signUp(BuildContext context) {
    if (_formKey.currentState?.validate() == true) {
      String email = _emailController.text;
      String password = _passwordController.text;
      context.read<AuthBloc>().add(
            AuthSignUpPressed(
              email: email,
              password: password,
            ),
          );
    }
  }
}
