import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/const/ui.dart';
import '../../service_locator.dart';
import '../widgets/loader.dart';
import 'bloc/success_bloc.dart';
import 'bloc/success_event.dart';
import 'bloc/success_state.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SuccessBloc>(),
      child: BlocConsumer<SuccessBloc, SuccessState>(
        listener: (context, state) {
          state.mapOrNull(signOut: (_) {
            context.router.pop();
          });
        },
        builder: (context, state) {
          return Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  title: const Text("Success"),
                  actions: [
                    TextButton(
                      onPressed: () => _exit(context),
                      child: const Text("Sign Out"),
                    ),
                  ],
                ),
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(UI.padding),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: UI.padding,
                        ),
                        Image.asset(
                          "assets/images/success.png",
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (state is SuccessLoading) const Loader()
            ],
          );
        },
      ),
    );
  }

  void _exit(BuildContext context) {
    context.read<SuccessBloc>().add(const SuccessSignOutPressed());
  }
}
