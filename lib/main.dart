
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:topview/core/theming/colors.dart';
import 'package:topview/features/bottom_nav_bar/controller/bottom_nav_bar_cubit.dart';
import 'package:topview/features/bottom_nav_bar/ui/bottom_navbar_screen.dart';

void main() =>
    runApp(DevicePreview(enabled: false, builder: (context) => const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => BottomNavBarCubit(),
            ),
          ],
          child: MaterialApp(
            // theme: ThemeData(
            //   appBarTheme: AppBarTheme(color: ColorsManager.white),
            //   scaffoldBackgroundColor: ColorsManager.white,
            // ),
            debugShowCheckedModeBanner: false,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home: const BottomNavBarScreen(),
          ),
        );
      },
    );
  }
}
