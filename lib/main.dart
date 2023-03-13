import 'package:auth_appication/application/bloc/auth_bloc.dart';
import 'package:auth_appication/injectible.dart';
import 'package:auth_appication/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  getIt.registerSingleton<AppRouter>(AppRouter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();

    return BlocProvider(
      create: (context) => AuthBloc()..add(const AuthEvent.started()),
      child: MaterialApp.router(
        title: 'Authentication Application',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(),
        debugShowCheckedModeBanner: false,
        builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(
            context,
            widget!,
          ),
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(600,
                name: TABLET, scaleFactor: 1.1),
          ],
        ),
      ),
    );
  }
}
