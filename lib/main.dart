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
          data: ThemeData(useMaterial3: true
              // primaryColor: getIt<AppColors>().primaryColor,
              // scaffoldBackgroundColor: getIt<AppColors>().scaffoldBackgroundColor,
              // appBarTheme: AppBarTheme(
              //   titleTextStyle: TextStyle(
              //     color: getIt<AppColors>().primaryColor,
              //     fontSize: 20.sp,
              //     fontFamily: 'Roboto',
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              // inputDecorationTheme: InputDecorationTheme(
              //   focusedBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(30.r),
              //     ),
              //     borderSide: BorderSide(
              //       width: 1.w,
              //       strokeAlign: BorderSide.strokeAlignOutside,
              //       color: getIt<AppColors>().textFormFieldBorderAndText,
              //     ),
              //   ),
              //   border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(30.r),
              //     ),
              //     borderSide: BorderSide(
              //       width: 1.w,
              //       strokeAlign: BorderSide.strokeAlignOutside,
              //       color: getIt<AppColors>().textFormFieldBorderAndText,
              //     ),
              //   ),
              //   contentPadding:
              //       EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
              //   hintStyle: TextStyle(
              //     color: getIt<AppColors>().textFormFieldBorderAndText,
              //     fontSize: 16.sp,
              //     fontFamily: 'Roboto',
              //     fontWeight: FontWeight.w400,
              //   ),
              //   labelStyle: TextStyle(
              //     color: getIt<AppColors>().textFormFieldBorderAndText,
              //     fontSize: 16.sp,
              //     fontFamily: 'Roboto',
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
              // iconTheme: IconThemeData(
              //   color: getIt<AppColors>().iconGrayColor,
              //   size: 16.dg,
              // ),
              // primaryTextTheme: TextTheme(
              //   labelSmall: TextStyle(
              //     fontSize: 12.sp,
              //     fontFamily: 'Mulish',
              //     fontWeight: FontWeight.w500,
              //   ),
              //   labelMedium: TextStyle(
              //     fontSize: 16.sp,
              //     fontFamily: 'Roboto',
              //     fontWeight: FontWeight.w600,
              //   ),
              //   displayMedium: TextStyle(
              //     fontSize: 14.sp,
              //     fontFamily: 'Roboto',
              //     fontWeight: FontWeight.w300,
              //   ),
              //   displaySmall: TextStyle(
              //     //color: getIt<AppColors>().textFormFieldBorderAndText,
              //     fontSize: 12.sp,
              //     fontFamily: 'Roboto',
              //     fontWeight: FontWeight.w700,
              //   ),
              // ),
              ),
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
