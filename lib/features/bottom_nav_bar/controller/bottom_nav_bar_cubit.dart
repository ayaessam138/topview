import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:topview/features/home/ui/widgets/screens/home_screen.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());


  List<Widget> pages = [HomeScreen(), Container(), Container(), Container(),Container()];

  int currentIndex = 0;

  void changeIndex(int index) {
    emit(BottomNavBarInitial());
    currentIndex = index;
    emit(BottomNavBarChangeIndex());
  }
}
