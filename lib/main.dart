import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unizone/layout/unizone_layout_cubit/unizone_layout_cubit.dart';
import 'package:unizone/shared/bloc_observer.dart';
import 'package:unizone/shared/constants/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return Theme(
          data: ThemeData(),
          child: Builder(
            builder: (context) {
              return BlocProvider(
                create: (_) => UnizoneLayoutCubit(),
                child: MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  theme: Theme.of(context),
                  routerConfig: router,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
