
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:topview/features/bottom_nav_bar/controller/bottom_nav_bar_cubit.dart';
import 'package:topview/features/bottom_nav_bar/ui/widgets/custom_navabar_widget.dart';
class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      buildWhen: (previous, current) => current is BottomNavBarChangeIndex,
      builder: (context, state) {
        var cubit = BlocProvider.of<BottomNavBarCubit>(context);

        return Scaffold(
          extendBody: true,
          body: cubit.pages[cubit.currentIndex],
          bottomNavigationBar: CustomBottomNavBar(
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeIndex(index);
            },
          ),
        );
      },
    );
  }
}
